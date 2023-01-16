// importing the flutter files
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://media.licdn.com/dms/image/D4E03AQHfyd18Qxp1aQ/profile-displayphoto-shrink_800_800/0/1644731304980?e=2147483647&v=beta&t=eAVwS-nLK2mYvM18Crco_eUv8TalJ30KngmBUGLIFOc';
    return Drawer(
      child : Container(
        color : Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                    accountName: const Text('Anvesh Dange',style: TextStyle(color: Colors.white),),
                    accountEmail: const Text('anveshdange@icloud.com', style: TextStyle(color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text('Home', style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text('Profile', style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text('Email Me', style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
          ],
        ),
      ),
    );
  }
}
