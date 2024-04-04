import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nba/screen/scr_ga.dart';
import 'package:nba/screen/scr_nnotifications.dart';
import 'package:nba/screen/scr_notifications.dart';
import 'package:nba/screen/tabs/tab_home.dart';
import 'package:nba/utils/colors.dart';
import 'package:nba/utils/index.dart';

List<Widget> widgets = <Widget>[const TabHomeScreen(), const GrossAddScreen()];

class HomeScreen extends StatelessWidget {
  final int index;
  HomeScreen(this.index, {super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    int counter = 1;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
          titleSpacing: 0,
          leadingWidth: 0,
          automaticallyImplyLeading: false,
          backgroundColor: theme.scaffoldBackgroundColor,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: _profileCard(context, counter))),
      drawer: Drawer(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header of the Drawer
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Container(
                      margin: const EdgeInsets.only(top: 10), //adding one pixel for appbar shadow
                      width: MediaQuery.of(context).size.width,
                      child: const ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.yellowAccent,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        title: Text(
                          'Navyn',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,),
                        ),
                        subtitle: Text(
                          'Last Login: 10:30 AM',
                          style: TextStyle(
                              fontWeight: FontWeight.w300),
                        ),
                      )),
            ),
            const Divider(),
            /// Header Menu items
            Column(
              children: [
                ListTile(
                  dense: true,
                  leading: const Icon(Icons.home),
                  title: Text('menu.home'.tr(), style: const TextStyle(fontSize: 16),),
                  onTap: () {
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen(0)),
                    );
                  },
                ),
                const Divider(indent: 13,),
                ListTile(
                  dense: true,
                  leading:  Icon(Icons.add_call, color: theme.primaryColor,),
                  title: Text('menu.gross'.tr(), style: const TextStyle(fontSize: 16)),
                  onTap: () {
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen(1)),
                    );
                  },
                ),
                const Divider(indent: 13,),
                ListTile(
                  leading: const Icon(Icons.workspaces),
                  title: const Text('Workflow'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.update),
                  title: const Text('Updates'),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.black45,
                ),
                ListTile(
                  leading: const Icon(Icons.account_tree_outlined),
                  title: const Text('Plugins'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.notifications_outlined),
                  title: const Text('Notifications'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenNotifications()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: widgets[index],
      ),
    );
  }

  Widget _profileCard(context, int counter) {
    ThemeData theme = Theme.of(context);
    return Container(
      color: theme.scaffoldBackgroundColor,
      margin: const EdgeInsets.only(top: 0.0),
      child: ListTile(
        dense: true,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.w600),
        subtitleTextStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.blueGrey),
        title:  const Text('Hello, Navyn!',style: TextStyle(fontSize: 18, color: Colors.black),),
        subtitle: const Text('Here\'s summary for 29 Sep - 30 Sept'),
        trailing: GestureDetector(
          child: Stack(
            children: <Widget>[
              IconButton(
                  icon: const Icon(
                    size: 30,
                    Icons.notifications_outlined,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScreenNewNotifications()));
                  }),
              Positioned(
                right: 9,
                top: 9,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScreenNewNotifications())),
        ),
        /**
        trailing: const Text(
          'Territory A / Cluster B',
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        ),
        **/
      ),
    );
  }
}
