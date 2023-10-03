import 'package:flutter/material.dart';
import 'package:rental_car/UI/Aktifitas/aktifitas.dart';
import 'package:rental_car/UI/Home/home.dart';
import 'package:rental_car/UI/Maps/maps.dart';
import 'package:rental_car/UI/Profil/profil.dart';
import 'package:rental_car/UI/Transaksi/transaksi.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key});

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int _selectedIndex = 0;

  List<Widget> halaman = [
    const HomePage(),
    const AktifitasPage(),
    const MapsPage(),
    const TransaksiPage(),
    const ProfilPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [halaman.elementAt(_selectedIndex)],
          );
        },
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.explore_outlined,
              color: Colors.blue,
            ),
            title: const Text("Beranda"),
            selectedColor: Colors.blue,
          ),

          // aktifitas
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.assignment_outlined,
              color: Colors.blue,
            ),
            title: const Text("Aktifitas"),
            selectedColor: Colors.blue,
          ),

          // maps
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.add_location_alt_outlined,
              color: Colors.blue,
            ),
            title: const Text("Maps"),
            selectedColor: Colors.blue,
          ),
          //pembayaran
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.monetization_on_outlined,
              color: Colors.blue,
            ),
            title: const Text("Transaksi"),
            selectedColor: Colors.blue,
          ),

          // Profile
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.blue,
            ),
            title: const Text("Profile"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
