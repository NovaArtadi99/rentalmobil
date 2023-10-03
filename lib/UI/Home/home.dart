import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_car/UI/Auth/login.dart';
import 'package:rental_car/UI/Car/datacar.dart';
import 'package:rental_car/UI/Detail/detail.dart';
import 'package:rental_car/UI/Home/favorit.dart';
import 'package:rental_car/UI/Laporan/laporan.dart';
import 'package:rental_car/UI/Maps/maps.dart';
import 'package:rental_car/UI/Notifikasi/notifikasi.dart';
import 'package:rental_car/UI/Pegawai/datapegawai.dart';
import 'package:rental_car/UI/Penyewa/datapenyewa.dart';
import 'package:rental_car/UI/Pesan/pesan.dart';
import 'package:rental_car/UI/Setting/setting.dart';
import 'package:rental_car/UI/Widget/category.dart';
import 'package:rental_car/UI/Widget/categorycar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/icons/logo.jpg"),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Damar Bike Rental',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Laporan'),
              leading: const Icon(Icons.assessment_sharp),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LaporanPage()));
              },
            ),
            ListTile(
              title: const Text('Data Mobil'),
              leading: const Icon(Icons.directions_car_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DataCar()));
              },
            ),
            ListTile(
              title: const Text('Data Pegawai'),
              leading: const Icon(Icons.group_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataPegawai()));
              },
            ),
            ListTile(
              title: const Text('Data Penyewa'),
              leading: const Icon(Icons.boy_outlined),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataPenyewa()));
              },
            ),
            // ListTile(
            //   title: Text('Transaksi'),
            //   leading: Icon(Icons.post_add),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => TransaksiPage()));
            //   },
            // ),
            // ListTile(
            //   title: Text('Aktifitas'),
            //   leading: Icon(Icons.post_add),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => AktifitasPage()));
            //   },
            // ),
            ListTile(
              title: const Text('Notification'),
              leading: const Icon(Icons.notifications),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
            ),
            ListTile(
              title: const Text('Setting'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingPage()));
              },
            ),
            ListTile(
              title: const Text('Pesan'),
              leading: const Icon(Icons.comment_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PesanPage()));
              },
            ), // Divider
            ListTile(
              title: const Text('Tes Map'),
              leading: const Icon(Icons.fmd_good_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MapsPage()));
              },
            ),
            const Expanded(
              child: SizedBox(),
            ),
            ListTile(
              title: const Text('Log Out'),
              leading: const Icon(Icons.logout_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: _openDrawer, // Open the drawer on tap
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: const Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Welcome",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationPage()));
                              },
                              child: Container(
                                alignment: Alignment.topRight,
                                child: const Icon(
                                  Icons.notifications_active,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 15, horizontal: 15),
                      //   child: Row(
                      //     children: [
                      //       const Expanded(
                      //         child: Text(
                      //           "Selamat datang di Rental Mobil Kami!",
                      //           style: TextStyle(
                      //             fontSize: 13,
                      //             // fontWeight: FontWeight.bold,
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(width: 15), // Jarak antara teks dan logo
                      //       Image.asset(
                      //         "assets/icons/logo.jpg",
                      //         height: 50,
                      //         width: 50,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            // Kontainer untuk ikon scan barcode (klik)
                            InkWell(
                              onTap: () {
                                // Aksi yang ingin Anda lakukan saat ikon scan barcode diklik
                              },
                              child: Container(
                                height: 40,
                                width: 40, // Ukuran kontainer ikon scan barcode
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Warna latar belakang kontainer ikon scan barcode
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color:
                                          Colors.blue, // Warna bayangan putih
                                      blurRadius: 4, // Kecerahan bayangan
                                      offset: Offset(
                                          0, 2), // Posisi bayangan (x, y)
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons
                                      .qr_code_2_outlined, // Ikon scan barcode (ganti dengan yang sesuai)
                                  color:
                                      Colors.black, // Warna ikon scan barcode
                                  size: 30, // Ukuran ikon scan barcode
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            // Kontainer untuk ikon pencarian (search)
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Warna latar belakang kontainer pencarian (search)
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color:
                                          Colors.blue, // Warna bayangan putih
                                      blurRadius: 6, // Kecerahan bayangan
                                      offset: Offset(
                                          0, 2), // Posisi bayangan (x, y)
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  cursorHeight: 20,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: "Cari Mobil Favoritmu",
                                    prefixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Kontainer untuk ikon favorit (klik)
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FavoritPage()));
                              },
                              child: Container(
                                height: 40,
                                width: 40, // Ukuran kontainer ikon favorit
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Warna latar belakang kontainer ikon favorit
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color:
                                          Colors.blue, // Warna bayangan putih
                                      blurRadius: 4, // Kecerahan bayangan
                                      offset: Offset(
                                          0, 2), // Posisi bayangan (x, y)
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons
                                      .favorite_outline, // Ikon favorit (ganti dengan yang sesuai)
                                  color: Colors.black, // Warna ikon favorit
                                  size: 30, // Ukuran ikon favorit
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const DetailPage(),
                                    ));
                              },
                              child: Container(
                                width: 160,
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    // city1.jpg
                                    image: AssetImage(
                                        "assets/images/tipe${index + 1}.jpg"),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: const Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: const Text(
                                        "Tipe Mobil",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Gulung ke samping
                  child: Row(
                    children: const [
                      Category(
                          imagePath: "assets/icons/toyota.png",
                          title: "Toyota"),
                      Category(
                          imagePath: "assets/icons/honda.png", title: "Honda"),
                      Category(
                          imagePath: "assets/icons/daihatsu.png",
                          title: "Daihatsu"),
                      Category(
                          imagePath: "assets/icons/suzuki.jpg",
                          title: "Suzuki"),
                      Category(
                          imagePath: "assets/icons/wuling.png",
                          title: "Wuling"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Mobil Favorit",
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              // SizedBox(height: 10),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ));
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/m${index + 1}.png"),
                                fit: BoxFit.cover,
                                opacity: 0.8,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Mobil",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(Icons.more_vert, size: 30),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Sering di Rental",
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const CategoryCar(
                imagePath: "assets/images/car4.jpeg",
                nameCar: "Toyota Avanza",
                rating: "4.8",
                harga: "400.000",
              ),
              const CategoryCar(
                imagePath: "assets/images/chr.jpg",
                nameCar: "Honda CRV",
                rating: "4.9",
                harga: "450.000",
              ),
              const CategoryCar(
                imagePath: "assets/images/car1.jpeg",
                nameCar: "Toyota Yaris",
                rating: "4.7",
                harga: "300.000",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
