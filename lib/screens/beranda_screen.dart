import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static final List<MataKuliah> _jadwal = [
    const MataKuliah(kode: 'IF301', nama: 'Pemrograman Mobile', hari: 'Senin'),
    const MataKuliah(
      kode: 'IF302',
      nama: 'Rekayasa Perangkat Lunak',
      hari: 'Selasa',
    ),
    const MataKuliah(
      kode: 'IF303',
      nama: 'Keamanan Sistem Informasi',
      hari: 'Rabu',
    ),
    const MataKuliah(kode: 'IF304', nama: 'Basis Data', hari: 'Kamis'),
    const MataKuliah(
      kode: 'IF305',
      nama: 'Analisis dan Desain Sistem',
      hari: 'Jumat',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tanggalHariIni = DateFormat(
      'EEEE, d MMMM y',
      'id_ID',
    ).format(DateTime.now());

    return Scaffold(
      appBar: AppBar(title: const Text('KampusKu'), centerTitle: true),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              tanggalHariIni,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Jadwal Mata Kuliah',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          for (final mk in _jadwal)
            ListTile(
              leading: const Icon(Icons.class_),
              title: Text(mk.nama),
              subtitle: Text('${mk.kode} · ${mk.hari}'),
            ),
        ],
      ),
    );
  }
}
