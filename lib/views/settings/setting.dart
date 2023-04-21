import 'package:carpooling_app/views/bottomnavbar.dart';
import 'package:carpooling_app/views/drawer/balance.dart';
import 'package:carpooling_app/views/drawer/history.dart';
import 'package:carpooling_app/views/login.dart';
import 'package:carpooling_app/views/settings/appereance.dart';
import 'package:carpooling_app/views/settings/notificationsetting.dart';
import 'package:carpooling_app/views/settings/privacy.dart';
import 'package:carpooling_app/views/settings/profile.dart';
import 'package:carpooling_app/views/vehicle/addvehicle.dart';
// import 'package:carpooling_app/widgets/custom_text.dart';
// import 'package:carpooling_app/widgets/showLoading.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: AppBar(
          title: const Text(
            "Profile and Settings",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Container(
                  width: 380.0,
                  height: 110.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: const [
                      // BoxShadow(
                      //   color: Color.fromARGB(255, 212, 212, 212),
                      //   blurRadius: 6.0, // soften the shadow
                      //   spreadRadius: 2.0, //extend the shadow
                      //   offset: Offset(
                      //     2.0, // Move to right 5  horizontally
                      //     2.0, // Move to bottom 5 Vertically
                      //   ),
                      // )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 34.0, left: 15),
                            child: Text(
                              ' CommuteNepal Cash',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 14.0, left: 20),
                            child: Text(
                              'NPR 2566.00',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 141, 140, 140),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Balance()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // user card
              // SimpleUserCard(
              //   userName: "Donalt Trump",
              //   userProfilePic: AssetImage("assets/images/logo.png"),
              // ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileSetting()));
                    },
                    icons: Icons.directions_bike,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Vefify your profile',
                    subtitle: "Verify for higher match",
                  ),
                  SettingsItem(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => History()));
                    },
                    icons: Icons.history_toggle_off_outlined,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Ride History',
                    subtitle: "Tap to view your ride history",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.fingerprint,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Security & Privacy',
                    subtitle: "Own your security",
                  ),
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddVehicle()));
                    },
                    icons: Icons.upgrade,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Upgrade to Rider',
                    subtitle: "Register and share your ride!",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.dark_mode_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Dark mode',
                    subtitle: "Automatic",
                    trailing: Switch.adaptive(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationSetting()));
                    },
                    icons: Icons.notifications,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Notifications',
                    subtitle: "Manage your notifications",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.language,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Language',
                    subtitle: "English",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.location_on,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Location',
                    subtitle: "Automatic",
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Account",
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    icons: Icons.exit_to_app_rounded,
                    title: "Sign Out",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.repeat,
                    title: "Change number",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.delete_solid,
                    title: "Delete account",
                    titleStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
