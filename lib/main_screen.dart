import 'package:flutter/material.dart';
import 'package:online_ecommerce_ui/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List _widgetsOptions = [
    HomeScreen(),
    Text("Tab 2", style: TextStyle(fontSize: 30)),
    Text("Tab 3", style: TextStyle(fontSize: 30)),
    Text("Tab 4", style: TextStyle(fontSize: 30)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetsOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xFF146ABE),
        unselectedItemColor: Colors.black54,
        iconSize: 28,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Whistlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
