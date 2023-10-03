// import 'package:flutter/material.dart';
// import 'package:rental_car/UI/Aktifitas/aktifitas.dart';
// import 'package:rental_car/UI/Home/home.dart';
// import 'package:rental_car/UI/Profil/profil.dart';

// class Navbar extends StatefulWidget {
//   const Navbar({Key? key}) : super(key: key);

//   @override
//   _NavbarState createState() => _NavbarState();
// }

// class _NavbarState extends State<Navbar> {
//   int _selectedTabIndex = 0;

//   void _onNavBarTapped(int index) {
//     setState(() {
//       _selectedTabIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final _listPage = <Widget>[
//       //const Text('Home'),
//       HomePage(),
//       // const Text('Aktifitas'),
//       AktifitasPage(),
//       const Text('Maps'),
//       const Text('Transaksi'),
//       // const Text('Profil'),
//       ProfilPage(),
//     ];

//     final _bottomNavbarItems = <BottomNavigationBarItem>[
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: 'Home',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.local_activity),
//         label: 'Aktifitas',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.map_sharp),
//         label: 'Maps',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.transfer_within_a_station),
//         label: 'Transaksi',
//       ),
//       const BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: 'Profile',
//       ),
//     ];

//     final _bottomNavBar = BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: Colors.blue,
//       items: _bottomNavbarItems,
//       currentIndex: _selectedTabIndex,
//       unselectedItemColor: Colors.white54,
//       selectedItemColor: Colors.white,
//       onTap: _onNavBarTapped,
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(
//         child: _listPage[_selectedTabIndex],
//       ),
//       bottomNavigationBar: _bottomNavBar,
//     );
//   }
// }
