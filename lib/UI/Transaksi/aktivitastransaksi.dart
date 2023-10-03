import 'package:flutter/material.dart';

class AktifitasTransaksi extends StatefulWidget {
  const AktifitasTransaksi({super.key});

  @override
  State<AktifitasTransaksi> createState() => _AktifitasTransaksiState();
}

class _AktifitasTransaksiState extends State<AktifitasTransaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aktivitas Transaksi'),
      ),
    );
  }
}
