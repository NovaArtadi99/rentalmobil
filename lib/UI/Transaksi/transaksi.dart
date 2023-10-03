import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_car/UI/Transaksi/aktivitastransaksi.dart';
import 'package:rental_car/UI/Transaksi/settingtransaksi.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
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
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Pembayaran",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SettingTransaksi()));
                            },
                            child: Container(
                              alignment: Alignment
                                  .topCenter, // Mengatur alignment ke atas
                              child: const Icon(
                                Icons.settings_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //     vertical: 15,
                    //     horizontal: 15,
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         child: RichText(
                    //           text: TextSpan(
                    //             style: TextStyle(
                    //               fontSize: 10,
                    //               color: Colors.black,
                    //             ),
                    //             children: [
                    //               TextSpan(text: "Pembayaran harian\n"),
                    //               TextSpan(text: "fleksibel yang sederhana"),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white10
                                .withOpacity(0.1), // Warna bayangan
                            spreadRadius: 2, // Sebaran bayangan
                            blurRadius: 4, // Kecerahan bayangan
                            offset: Offset(0, 2), // Posisi bayangan (x, y)
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // Aksi yang ingin Anda lakukan saat kontainer pertama diklik
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 25.0,
                              ),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(
                                    10), // Membuat pinggiran bulat
                                border: Border.all(
                                  color: Colors.white, // Warna garis tepi
                                  width: 2.0, // Lebar garis tepi
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.credit_card,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ), // Jarak antara ikon dan teks
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Tambahkan kartu',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Pembayaran nontunai dengan kartu kredit',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            // Garis pemisah antara dua Container
                            color: Colors.white,
                            height: 10,
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // Aksi yang ingin Anda lakukan saat kontainer kedua diklik
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 25.0,
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          10), // Membuat pinggiran bulat
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(
                                              0.5), // Warna bayangan
                                          spreadRadius: 2, // Sebaran bayangan
                                          blurRadius: 4, // Kecerahan bayangan
                                          offset: const Offset(
                                              0, 2), // Posisi bayangan (x, y)
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.shopping_cart,
                                          color: Colors.blue,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Isi Ulang',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Aksi yang ingin Anda lakukan saat kontainer ketiga diklik
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          10), // Membuat pinggiran bulat
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(
                                              0.5), // Warna bayangan
                                          spreadRadius: 2, // Sebaran bayangan
                                          blurRadius: 4, // Kecerahan bayangan
                                          offset: const Offset(
                                              0, 2), // Posisi bayangan (x, y)
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.barcode_reader,
                                          color: Colors.blue,
                                          size: 30,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Scan untuk Membayar',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      // Garis pemisah
                      color: Colors.white70,
                      height: 15,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Mengatur penempatan ke kiri
                        children: [
                          const Text(
                            'Transaksi Terkini',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 40),
                          const Center(
                            child: Icon(
                              Icons
                                  .description_outlined, // Ganti dengan ikon kertas yang sesuai
                              color: Colors.grey,
                              size: 100, // Ukuran ikon yang lebih besar
                            ),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Mengatur teks berada di tengah
                              children: [
                                const Text(
                                  'Tidak ada aktivitas terkini untuk ditampilkan di sini.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AktifitasTransaksi()));
                                  },
                                  child: const Text(
                                    'Lihat transaksi masa lalu',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      // decoration: TextDecoration
                                      //     .underline, // Garis bawah teks
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
