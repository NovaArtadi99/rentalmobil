import 'package:flutter/material.dart';

class SettingTransaksi extends StatefulWidget {
  const SettingTransaksi({super.key});

  @override
  State<SettingTransaksi> createState() => _SettingTransaksiState();
}

class _SettingTransaksiState extends State<SettingTransaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Keuangan'),
      ),
    );
  }
}
