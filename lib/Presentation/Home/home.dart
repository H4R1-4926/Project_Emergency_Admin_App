// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:emergency_admin_app/Core/colors.dart';
import 'package:emergency_admin_app/Presentation/Home/HomeScreens/ambulance.dart';
import 'package:emergency_admin_app/Presentation/Home/HomeScreens/emergency.dart';
import 'package:emergency_admin_app/Presentation/Home/HomeScreens/emergency_plus.dart';
import 'package:emergency_admin_app/Presentation/Home/HomeScreens/police.dart';
import 'package:emergency_admin_app/Presentation/Home/HomeScreens/sos.dart';
import 'package:flutter/material.dart';

final ValueNotifier _pagenotifier = ValueNotifier(0);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _pages = [
      PoliceEmPage(),
      AmbulanceEmPage(),
      SosEmPage(),
      EmergencyEmPage(),
      EmergencyPlusEmPage()
    ];
    return ValueListenableBuilder(
      valueListenable: _pagenotifier,
      builder: (context, newIndex, _) {
        return Scaffold(
          body: ValueListenableBuilder(
            valueListenable: _pagenotifier,
            builder: (context, value, _) {
              return _pages[value];
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_police_outlined),
                  label: 'Police',
                  activeIcon: Icon(Icons.local_police),
                  backgroundColor: kBlack),
              BottomNavigationBarItem(
                  icon: Icon(Icons.medical_services_outlined),
                  label: 'Medical',
                  activeIcon: Icon(Icons.medical_services),
                  backgroundColor: kBlack),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sos_outlined),
                  label: 'SOS',
                  activeIcon: Icon(Icons.sos),
                  backgroundColor: kBlack),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emergency_outlined),
                  label: 'Emergency',
                  activeIcon: Icon(Icons.emergency),
                  backgroundColor: kBlack),
              BottomNavigationBarItem(
                  icon: Icon(Icons.priority_high_outlined),
                  label: 'Emergency++',
                  activeIcon: Icon(Icons.priority_high),
                  backgroundColor: kBlack)
            ],
            currentIndex: newIndex,
            onTap: (value) {
              _pagenotifier.value = value;
            },
            selectedItemColor: kDarkRed,
            unselectedItemColor: kLightRed,
          ),
        );
      },
    );
  }
}
