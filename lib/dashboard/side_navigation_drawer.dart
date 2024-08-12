import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import '../pages/drivers_page.dart';
import '../pages/trips_page.dart';
import '../pages/users_page.dart';
import 'dashboard.dart';

//common users
//drivers
//admins

class SideNavigationDrawer extends StatefulWidget {
  const SideNavigationDrawer({super.key});

  @override
  State<SideNavigationDrawer> createState() => _SideNavigationDrawerState();
}

class _SideNavigationDrawerState extends State<SideNavigationDrawer>
{
  Widget chosenScreen = Dashboard();

  sendAdminTo(selectedPage)
  {
    switch(selectedPage.route)
    {
      case DriversPage.id:
        setState(() {
          chosenScreen = DriversPage();
        });
        break;

      case UsersPage.id:
        setState(() {
          chosenScreen = UsersPage();
        });
        break;

      case TripsPage.id:
        setState(() {
          chosenScreen = TripsPage();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return AdminScaffold(
      backgroundColor: const Color.fromRGBO(200, 200, 200, 1),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: const Text(
          "Admin Web",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: "Drivers",
            route: DriversPage.id,
            icon: CupertinoIcons.car_detailed,
          ),
          AdminMenuItem(
            title: "Users",
            route: UsersPage.id,
            icon: CupertinoIcons.person_2_fill,
          ),
          AdminMenuItem(
            title: "Trips",
            route: TripsPage.id,
            icon: CupertinoIcons.location_fill,
          ),
        ],
        selectedRoute: DriversPage.id,
        onSelected: (selectedPage)
        {
          sendAdminTo(selectedPage);
        },
        /*header: Container(
          height: 52,
          width: double.infinity,
          color: Colors.green.shade500,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.accessibility,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ],
          ),
        ),*/
        footer: Container(
          height: 52,
          width: double.infinity,
          color: Colors.pink.shade400,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Icon(
                Icons.admin_panel_settings_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 50,
              ),*/
              Icon(
                Icons.computer,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
      body: chosenScreen,
    );
  }
}
