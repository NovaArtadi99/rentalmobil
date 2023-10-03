import 'package:flutter/material.dart';
import 'package:rental_car/UI/Profil/editprofil.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        // Menggunakan SingleChildScrollView di sekitar widget Column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfil()));
                },
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor:
                              Colors.blue, // Warna latar belakang CircleAvatar
                          child: Icon(
                            Icons.person_outline, // Ikon person
                            size: 80, // Ukuran ikon
                            color: Colors.black, // Warna ikon
                          ),
                        ),
                        Positioned(
                          // Menempatkan ikon pensil di atas ikon person
                          bottom: 0,
                          right: 0,
                          child: Icon(
                            Icons.edit, // Ikon pensil (edit)
                            size: 30, // Ukuran ikon pensil
                            color: Colors.black, // Warna ikon pensil
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10), // Jarak antara ikon dan teks
                    const Text(
                      'Nova Artadi',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // child: Column(
              //   children: const [
              //     CircleAvatar(
              //       radius: 50,
              //       //   backgroundImage: NetworkImage(
              //       //       'https://static1.undiksha.ac.id/siakng/2021/fotomahasiswa/1236157590-1629800152.jpg'),
              //       backgroundImage: AssetImage("assets/icons/logo.jpg"),
              //     ),
              //     SizedBox(height: 10),
              //     Text(
              //       'Nova Artadi',
              //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.transparent, // Warna container
              padding: const EdgeInsets.all(10), // Padding dalam container
              child: const Text(
                'Akun Saya', // Teks dalam container
                style: TextStyle(
                  color: Colors.black, // Warna teks dalam container
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
                height:
                    10), // Berikan jarak antara teks "Akun Saya" dan ListTile
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Nama Pengguna'),
              subtitle: Text('Nova Artadi'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Email'),
              subtitle: Text('arta@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Password'),
              subtitle: Text('********'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('No Telepon'),
              subtitle: Text('087654090871'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Alamat'),
              subtitle: Text('Buleleng, Bali'),
            ),
          ],
        ),
      ),
    );
  }
}
