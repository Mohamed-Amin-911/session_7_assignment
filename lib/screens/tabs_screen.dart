import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_7/core/size_config.dart';
import 'package:session_7/screens/home_Screen.dart';
import 'package:session_7/screens/jasa_screen.dart';
import 'package:session_7/screens/loging_screen.dart';
import 'package:session_7/screens/orders_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const JasaScreen(),
    const OrdersScreen(),
    const LoginScreen()
  ];
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xff3669C9),
          // fixedColor: const Color(0xff17237F),
          showUnselectedLabels: true,
          // unselectedLabelStyle: const TextStyle(
          //     color: Color.fromARGB(139, 23, 35, 127), fontSize: 14),
          // selectedLabelStyle:
          //     const TextStyle(color: Color(0xff17237F), fontSize: 14),
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icn3.svg",
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 0
                          ? const Color(0xff3669C9)
                          : Colors.black,
                      BlendMode.srcIn),
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icn4.svg",
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 1
                          ? const Color(0xff3669C9)
                          : Colors.black,
                      BlendMode.srcIn),
                ),
                label: "JASA"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icn5.svg",
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 2
                          ? const Color(0xff3669C9)
                          : Colors.black,
                      BlendMode.srcIn),
                ),
                label: "ORDER"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icn6.svg",
                  colorFilter: ColorFilter.mode(
                      selectedIndex == 3
                          ? const Color(0xff3669C9)
                          : Colors.black,
                      BlendMode.srcIn),
                ),
                label: "LOGIN"),
          ],
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          }),
      body: screens[selectedIndex],
    );
  }
}
