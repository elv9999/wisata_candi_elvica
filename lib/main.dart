import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/screens/detail_screen.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
import 'package:wisata_candi/screens/home_screen.dart';
import 'package:wisata_candi/screens/profile_screen.dart';
import 'package:wisata_candi/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Perbaikan 1: Ganti 'new' menjadi 'MyApp'
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      //home: DetailScreen(candi: candiList[5]),
      //home: ProfileScreen(),
<<<<<<< HEAD
      home: SignUpScreen(),
=======
      //home: SearchScreen(),
      //home: HomeScreen(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  // Perbaikan 2: Ganti 'new' menjadi 'MainScreen'
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // TODO 1 : DEKLARASIKAN VARIABEL----------------------
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  // ---------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    // Perbaikan 3: Pastikan body & bottomNavigationBar berada DI DALAM Scaffold(...)
    return Scaffold(
      // TODO 2: Buat Properti Body ----------------------------------
      body: _children[_currentIndex],

      // TODO 3: Buat properti Nav Bar--------------------------------
      bottomNavigationBar: Theme(
        // TODO 4: Buat data dan child dari theme---------------------
        data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.deepPurple),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.deepPurple),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.deepPurple),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.deepPurple),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showUnselectedLabels: true,
        ),
      ),
>>>>>>> 27f29e08d262530a140653084ff336eb62aad120
    );
  }
}
