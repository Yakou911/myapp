import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PromoPage(),
    );
  }
}

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // XP Progress
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(6.0),
                child: Stack(
                  children: [
                    Image.asset(
                      'images/bkg.png', // Add the star image asset// Set the color of the star
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            'images/treasure_icon.png', // Replace with your image asset
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '121 XP to your next treasure',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              LinearProgressIndicator(
                                value: 0.6,
                                backgroundColor: Colors.grey[300],
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 16, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Promo Codes
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(
                      count: '13',
                      title: 'Vouchers',
                      subtitle: '13 Akan hangus',
                      color: Colors.orange,
                      height: 60,
                      width: 90,
                    ),
                    InfoCard(
                      count: '0',
                      title: 'Langganan',
                      subtitle: 'Lagi aktif',
                      color: Colors.purple,
                      height: 60,
                      width: 90,
                    ),
                    InfoCard(
                      count: '0',
                      title: 'Mission',
                      subtitle: 'Lagi berjalan',
                      color: Colors.teal,
                      height: 60,
                      width: 90,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16), // Promo Code Entry
              Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: Svg('images/promo_icon.svg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Text('Masukan kode promo'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,
                          size: 16, color: Colors.grey),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Promo Categories
              Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Promo menarik buat kamu',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PromoCategoryButton('Apa aja', true),
                          PromoCategoryButton('GoFood', false),
                          PromoCategoryButton('GoPay', false),
                          PromoCategoryButton('GoPayLater', false),
                          PromoCategoryButton('GoRide', false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Promo Items
              Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Biar makin hemat',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 346,
                      height: 139,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/iklan_promo.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: i == 0 ? Colors.green : Colors.grey[300],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/gopay.png'))),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('GoPay',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Promo menarik dari brand populer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Buat rileks atau produktif, kamu yang tentuin!',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String count;
  final String title;
  final String subtitle;
  final Color color;
  final double height;
  final double width;

  const InfoCard({
    required this.count,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 120,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    count,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                ],
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Container(
                height: 4,
                width: double.infinity,
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PromoCategoryButton extends StatelessWidget {
  final String title;
  final bool isSelected;

  PromoCategoryButton(this.title, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? Colors.green : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.green),
          ),
        ),
        child: Text(title),
        onPressed: () {},
      ),
    );
  }
}

class PromoItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  PromoItem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(
                  ('images/promo.jpg'),
                ), // Menggunakan AssetImage untuk assets lokal
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(subtitle, style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
