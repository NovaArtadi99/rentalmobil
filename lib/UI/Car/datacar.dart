import 'package:flutter/material.dart';
import 'package:rental_car/UI/Car/inputcar.dart';
import 'package:rental_car/models/errMsg.dart';
import 'package:rental_car/models/mobil.dart';
import 'package:rental_car/services/api.dart';

class DataCar extends StatefulWidget {
  const DataCar({super.key});

  @override
  State<DataCar> createState() => _DataCarState();
}

class _DataCarState extends State<DataCar> {
  late ErrorMSG response;
  List<Car> _car = [];
  bool _isLoading = false;
  void deleteCar(platMobil) async {
    response = await ApiStatic.deleteCar(platMobil);
    final snackBar = SnackBar(
      content: Text(response.message),
    );
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => const DataCar()),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchCar();
  }

  Future<void> fetchCar() async {
    setState(() {
      _isLoading = true;
    });

    try {
      List<Car> car = await ApiStatic.getCar();
      setState(() {
        _car = car;
        _isLoading = false;
      });
    } catch (e) {
      // Handle error
      // ignore: avoid_print
      print('Failed to fetch car: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _refreshCar() async {
    await fetchCar();
  }

  void _showPostDetail(Car car) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => DetailCar(car: car),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Car'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            DateTime tglPajak = DateTime.now(); // Tambahkan ini untuk tglCatat
            DateTime tglCatat = DateTime.now(); // Tambahkan ini untuk tglPajak
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InputCar(
                          car: Car(
                              platMobil: '',
                              namaMobil: '',
                              warna: '',
                              tipe: '',
                              tahun: '',
                              tglPajak: tglPajak,
                              namaPemilik: '',
                              cc: '',
                              hargaSewa: '',
                              status: true,
                              gambarMobil: '',
                              tglCatat: tglCatat),
                          platMobil: '',
                        )));
          }),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: _refreshCar,
              child: ListView.builder(
                itemCount: _car.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == _car.length) {
                    if (_isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  }
                  Car car = _car[index];
                  return GestureDetector(
                    onTap: () {
                      _showPostDetail(car);
                    },
                    child: ListTile(
                      title: Text(car.platMobil),
                      subtitle: Text(car.namaMobil),
                      leading: Image.network(
                          // ignore: prefer_interpolation_to_compose_strings
                          ApiStatic.host + "/storage/" + car.gambarMobil),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InputCar(
                                            car: car,
                                            platMobil: '',
                                          )));
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("Konfirmasi Hapus"),
                                    content: const Text(
                                        "Apakah Anda yakin ingin menghapus post ini?"),
                                    actions: [
                                      TextButton(
                                        child: const Text("Batal"),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); // Tutup dialog
                                        },
                                      ),
                                      TextButton(
                                        child: const Text("Hapus"),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); // Tutup dialog
                                          deleteCar(car
                                              .platMobil); // Jalankan fungsi hapus
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
