
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nba/screen/scr_ga.dart';
import 'package:nba/screen/scr_main.dart';
import 'package:nba/utils/colors.dart';
import 'package:nba/utils/index.dart';

List<Widget> widgets = <Widget>[const MainScreen(),const GrossAddScreen()];
class HomeScreen extends StatelessWidget {
  final int index;
  const HomeScreen(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        titleSpacing: 4,
        title:  Transform.translate(
            offset: Offset(-50.0, 0.0),
            child: GestureDetector(
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: colorPrimary,
                  border: Border.all(color: colorPrimary),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage('assets/images/vodacom.png'),
                      fit: BoxFit.contain
                  ),
                ),
              ),
              onTap: ()=> Scaffold.of(context).openDrawer(),
            )),
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header of the Drawer
            Container(
              width: MediaQuery.of(context).size.width,
              color: theme.primaryColor,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(0)),);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 15.0, top: 30, bottom: 10),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/vodacom.png'),
                      ),
                      SizedBox(height: 4,),
                      Text('Sophia Newton',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      Text('newton@sophia.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                        ),),

                    ],
                  ),
                ),
              ),
            ),

            /// Header Menu items
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: Text('menu.home'.tr()),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(0)),);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.add_box_outlined),
                  title: Text('menu.gross'.tr()),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(1)),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.workspaces),
                  title: Text('Workflow'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.update),
                  title: Text('Updates'),
                  onTap: (){},
                ),
                const Divider(color: Colors.black45,),
                ListTile(
                  leading: Icon(Icons.account_tree_outlined),
                  title: Text('Plugins'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.notifications_outlined),
                  title: Text('Notifications'),
                  onTap: (){},
                ),
              ],
            )
          ],
        ),
      ),
      body: widgets[index] ,

    );
  }
}

