import 'package:flutter/material.dart';
import 'package:rental_car/UI/Aktifitas/riwayat.dart';

class AktifitasPage extends StatefulWidget {
  const AktifitasPage({Key? key}) : super(key: key);

  @override
  State<AktifitasPage> createState() => _AktifitasPageState();
}

class _AktifitasPageState extends State<AktifitasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aktifitas'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RiwayatPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 12.0),
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20.0), // Ubah nilai BorderRadius
                border: Border.all(
                    color: Colors.white,
                    width: 1.0), // Ubah nilai color dan width
              ),
              child: Row(
                children: const [
                  Icon(Icons.history),
                  SizedBox(width: 4.0),
                  Text(
                    'Riwayat',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.description, // Mengganti ikon menjadi "kertas"
              size: 100.0,
              color: Colors.grey,
            ),
            SizedBox(height: 20.0),
            Text(
              "Lagi nggak ada apa-apa, nih",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold, // Teks bold
                color: Colors.grey,
              ),
            ),
            Text(
              "Disini kamu belum punya aktifitas.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const NavbarPage(),
    );
  }
}
