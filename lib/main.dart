import 'package:coffee_shop_app/screens/favorite.dart';
import 'package:coffee_shop_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'coffee shop',
      theme: ThemeData(
        fontFamily: 'Sora',
      ),
      home: BottomNavigationBarApp(),
    );
  }
}

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    Home(),
    Favorite(),
  ];

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          onItemTapped(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          // BottomNavigationBarItem(icon: Icon(Icons.paypal), label: 'Payment'),
        ],
      ),
    );
  }
}
