import 'package:flutter/material.dart';
import 'package:t2305m_flutter/screen/cart/cart_screen.dart';
import 'package:t2305m_flutter/screen/home/home_screen.dart';
import 'package:t2305m_flutter/screen/profile/profile_screen.dart';
import 'package:t2305m_flutter/screen/seach/search_screen.dart';
class RootPage extends StatefulWidget{
  const RootPage({super.key});

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>{
  // khai bao va su dung state o day
  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  int _selectedIndex = 0;
  changeScreen(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("T2305M Flutter Demo",
                  style: TextStyle(color: Colors.white)
                ),
        backgroundColor: Colors.orange,
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
                                  label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),
                                  label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),
                                label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
                                label: "Profile"),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black87,
        currentIndex: _selectedIndex,
        onTap: (index)=> changeScreen(index),
      ),
    );
  }
   
}