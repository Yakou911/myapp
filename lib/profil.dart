import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 30,
              height: 25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: Svg('images/panah.svg'),
                ),
              ),
            ),
            SizedBox(width: 2),
            Text('Profilku', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19)),
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Menyesuaikan cross axis alignment agar tepat
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color.fromARGB(255, 1, 133, 6),
                  child: Text('AV', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          top: 5, // Penyesuaian top agar sejajar dengan teks Afrian Viky
                          left: -10,
                          child: Container(
                            width: 4,
                            height: 20,
                            color: Color.fromARGB(255, 1, 133, 6),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Afrian Viky',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 4), // Menambah sedikit jarak antara nama dan email
                    Text(
                      'afrianvw@gmail.com',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '+6281234567891',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: Svg('images/pensil.svg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Svg('images/vip.svg'))
                      ),
                    ),
                    SizedBox(width: 5),
                    Text('Warga', style: TextStyle(color: Colors.white, fontSize: 15)),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Akun',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          _buildMenuSection(
            imagePath: 'images/pesan.svg',
            title: 'Pesanan',
            subtitle: 'Cek riwayat & pesanan aktif',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/club.svg',
            title: 'GoClub',
            subtitle: '20 xp',
          ),
          _buildDivider(),
          _buildMenuSectionWithBadge(
            imagePath: 'images/langganan.svg',
            title: 'Langgananku',
            badge: 'Baru',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/promo.svg',
            title: 'Promo',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/bayar.svg',
            title: 'Metode Pembayaran',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/bantuan.svg',
            title: 'Bantuan & Laporan Saya',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/bisnis.svg',
            title: 'Profil Bisnis',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/bahasa.svg',
            title: 'Pilih Bahasa',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/alamat.svg',
            title: 'Alamat Favorit',
          ),
          _buildDivider(),
          _buildMenuSection(
            imagePath: 'images/ajak.svg',
            title: 'Ajak teman pakai Gojek',
          ),
          _buildDivider(),
        ],
      ),
    );
  }

  // Fungsi untuk membangun menu dengan subtitle dan gambar SVG
  Widget _buildMenuSection({required String imagePath, required String title, String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), // Tambahkan padding vertikal untuk memberi jarak
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Svg(imagePath),
                    ),
                  ),
                ),
              ),
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              if (subtitle != null && subtitle.isNotEmpty) ...[
                Text(subtitle!, style: TextStyle(color: Colors.black, fontSize: 12)),
                SizedBox(width: 8),
              ],
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.chevron_right, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun menu dengan badge dan gambar SVG
  Widget _buildMenuSectionWithBadge({required String imagePath, required String title, required String badge}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), // Tambahkan padding vertikal untuk memberi jarak
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Svg(imagePath),
                    ),
                  ),
                ),
              ),
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 1, 133, 6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  badge,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.chevron_right, color: Colors.black),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun Divider yang lebih halus
  Widget _buildDivider() {
    return Divider(
      color: Colors.grey[300],
      height: 10,
      thickness: 1,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Profil(),
  ));
}
