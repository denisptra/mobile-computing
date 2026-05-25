import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiKerenSaya());
}

class AplikasiKerenSaya extends StatelessWidget {
  // PERBAIKAN: Mengubah super.dart menjadi super.key
  const AplikasiKerenSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tampilan Baru',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  // PERBAIKAN: Mengubah super.dart menjadi super.key
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  String teksTampilan = "Halo! Ini adalah tampilan awal aplikasi Anda.";
  int jumlahKlik = 0;

  void ubahTampilan() {
    setState(() {
      jumlahKlik++;
      teksTampilan = "Hebat! Anda sudah mengklik tombol ini sebanyak $jumlahKlik kali! 🎉";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Aplikasi Pertama Saya'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        color: Colors.grey[100], // Menggunakan abu-abu terang agar teks lebih terbaca
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.rocket_launch,
              size: 80,
              color: Colors.indigo,
            ),
            const SizedBox(height: 20),
            // PERBAIKAN: Memperbaiki sintaks textAlign yang salah sebelumnya
            Text(
              teksTampilan,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, 
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: ubahTampilan, 
              icon: const Icon(Icons.touch_app),
              label: const Text('Klik Saya Untuk Mengubah'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
