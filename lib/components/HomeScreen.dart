import 'package:flutter/material.dart';
import 'package:library_application/components/BookCard.dart';
import 'package:library_application/components/Categories.dart';
import 'package:library_application/components/ProfileScreen.dart';
import 'package:library_application/components/SearchBox.dart';
import 'package:library_application/components/SettingsScreen.dart';
import 'package:library_application/components/TopUser.dart';
import 'package:library_application/components/TopBook.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> widgetOptions = const [
    ProfileScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
            color: Colors.white,
          ),
        ],
        backgroundColor: Color(0xFF6495ED),
      ),
      body: _selectedIndex == 0
          ? Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopUser(),
                    SizedBox(height: 20),
                    SearchBox(),
                    SizedBox(height: 15),
                    SizedBox(height: 20, child: Categories()),
                    SizedBox(height: 10),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.50, // Dynamic height for BookCard
                      child: BookCard(),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.80, // Dynamic height for TopBook
                      child: TopBook(),
                    ),
                  ],
                ),
              ),
            )
          : widgetOptions[_selectedIndex - 1],
      // ✅ Loads correct screen // ✅ Loads correct screen
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
