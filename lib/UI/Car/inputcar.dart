import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rental_car/UI/Car/datacar.dart';
import 'package:rental_car/models/errMsg.dart';
import 'package:rental_car/models/mobil.dart';
import 'package:rental_car/services/api.dart';

class InputCar extends StatefulWidget {
  final Car car;
  final String platMobil;
  // ignore: prefer_const_constructors_in_immutables
  InputCar({super.key, required this.car, required this.platMobil});

  @override
  State<InputCar> createState() => _InputCarState();
}

class _InputCarState extends State<InputCar> {
  final _formkey = GlobalKey<FormState>();
  late TextEditingController namaMobil,
      warna,
      tipe,
      tahun,
      tglPajak,
      namaPemilik,
      cc,
      hargaSewa,
      status,
      gambarMobil,
      tglCatat;

  late String platMobil = '';
  bool _isupdate = false;
  // ignore: unused_field
  bool _validate = false;
  bool _success = false;
  late ErrorMSG response;
  late String _imagePath = '';
  late String _imageURL = '';
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    namaMobil = TextEditingController();
    warna = TextEditingController();
    tipe = TextEditingController();
    tahun = TextEditingController();
    tglPajak = TextEditingController();
    namaPemilik = TextEditingController();
    cc = TextEditingController();
    hargaSewa = TextEditingController();
    status = TextEditingController();
    tglCatat = TextEditingController();
    if (widget.car.platMobil != '') {
      platMobil = widget.car.platMobil;
      namaMobil = TextEditingController(text: widget.car.namaMobil);
      warna = TextEditingController(text: widget.car.warna);
      tipe = TextEditingController(text: widget.car.tipe);
      tahun = TextEditingController(text: widget.car.tahun);
      tglPajak = TextEditingController(text: widget.car.tglPajak.toString());
      namaPemilik = TextEditingController(text: widget.car.namaPemilik);
      cc = TextEditingController(text: widget.car.cc);
      hargaSewa = TextEditingController(text: widget.car.hargaSewa);
      status = TextEditingController(text: widget.car.status.toString());
      tglCatat = TextEditingController(text: widget.car.tglCatat.toString());
      _isupdate = true;
      _imageURL = ApiStatic.host + '/storage/' + widget.car.gambarMobil;
    } else if (widget.platMobil != '') {
      platMobil = widget.platMobil;
      _isupdate = true;
    }

    super.initState();
  }

  void submit() async {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      var params = {
        'nama_mobil': namaMobil.text.toString(),
        'warna': warna.text.toString(),
        'tipe': tipe.text.toString(),
        'tahun': tahun.text.toString(),
        'tgl_pajak': tglPajak.text.toString(),
        'nama_pemilik': namaPemilik.text.toString(),
        'cc': cc.text.toString(),
        'harga_sewa': hargaSewa.text.toString(),
        'status': status.text.toString(),
        'tgl_catat': tglCatat.text.toString(),
      };

      if (_isupdate) {
        response = await ApiStatic.saveCar(platMobil, params, _imagePath);
      } else {
        response = await ApiStatic.saveCar('', params, _imagePath);
      }

      _success = response.success;
      final snackBar = SnackBar(
        content: Text(response.message),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      if (_success) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => DataCar(),
          ),
        );
      }
    } else {
      setState(() {
        _validate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isupdate
            ? Text('Update ${widget.car.platMobil}')
            : const Text('Input Data'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                TextFormField(
                  controller: namaMobil,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  decoration: const InputDecoration(
                    hintText: "Nama Mobil",
                    labelText: "Nama Mobil",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: warna,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  decoration: const InputDecoration(
                    hintText: "Warna",
                    labelText: "Warna",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: tipe,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  decoration: const InputDecoration(
                    hintText: "Tipe",
                    labelText: "Tipe",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: tahun,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Tahun",
                    labelText: "Tahun",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: tglPajak,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  decoration: const InputDecoration(
                    hintText: "Tanggal Pajak",
                    labelText: "Tanggal Pajak",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: namaPemilik,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  decoration: const InputDecoration(
                    hintText: "Nama Pemilik",
                    labelText: "Nama Pemilik",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: cc,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  decoration: const InputDecoration(
                    hintText: "CC",
                    labelText: "CC",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: hargaSewa,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Harga Sewa",
                    labelText: "Harga Sewa",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                _buildImageWidget(),
                SizedBox(height: 10),
                TextFormField(
                  controller: status,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    hintText: "Status",
                    labelText: "Status",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: tglCatat,
                  validator: (value) => value!.isEmpty ? "Wajib isi" : null,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    hintText: "Tanggal Catat",
                    labelText: "Tanggal Catat",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: submit,
                  child: Text("Simpan"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageWidget() {
    return Row(
      children: [
        const Icon(Icons.image),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              getImage(ImageSource.gallery);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              height: 120,
              child: _imagePath != ''
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        File(_imagePath),
                        fit: BoxFit.cover,
                      ),
                    )
                  : _imageURL != ''
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            _imageURL,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Center(
                          child: Text(
                            "Pilih Gambar",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
            ),
          ),
        ),
      ],
    );
  }

  Future getImage(ImageSource source) async {
    var img = await _picker.pickImage(source: source);
    if (img != null) {
      setState(() {
        _imagePath = img.path;
      });
    }
  }
}
