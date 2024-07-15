import 'package:flutter/material.dart';

class PromoPage extends StatefulWidget {
  @override
  _PromoPageState createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  int _selectedIndex = 1; // Promos tab is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promo', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildXPCard(),
            _buildVoucherSection(),
            _buildPromoCodeInput(),
            _buildPromoCategories(),
            _buildPromoCarousel(),
            _buildGopayPromo(),
            _buildPopularBrandPromo(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildXPCard() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.orange),
          SizedBox(width: 8),
          Text('121 XP to your next treasure'),
          Spacer(),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  Widget _buildVoucherSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildVoucherItem('13', 'Vouchers', '13 Akan hangus', Colors.orange),
          _buildVoucherItem('0', 'Langganan', 'Lihat aja', Colors.purple),
          _buildVoucherItem('0', 'Mission', 'Lagi berjalan', Colors.blue),
        ],
      ),
    );
  }

  Widget _buildVoucherItem(String count, String title, String subtitle, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(title),
        Text(subtitle, style: TextStyle(fontSize: 12, color: color)),
      ],
    );
  }

  Widget _buildPromoCodeInput() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.local_offer, color: Colors.orange),
          SizedBox(width: 8),
          Text('Masukan kode promo'),
          Spacer(),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  Widget _buildPromoCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Promo menarik buat kamu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              _buildCategoryChip('Apa aja', Colors.green),
              _buildCategoryChip('GoFood', Colors.white),
              _buildCategoryChip('GoPay', Colors.white),
              _buildCategoryChip('GoPayLater', Colors.white),
              _buildCategoryChip('GoRide', Colors.white),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryChip(String label, Color color) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Text(label, style: TextStyle(color: color == Colors.white ? Colors.black : Colors.white)),
    );
  }

  Widget _buildPromoCarousel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Biar makin hemat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildPromoCard('JAMINAN\nONKIR\n5RB', Colors.red),
              _buildPromoCard('JAMINAN\nONKIR\n5RB', Colors.red),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPromoCard(String text, Color color) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: Text(text, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildGopayPromo() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.account_balance_wallet, color: Colors.blue),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('GoPay', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Promo menarik dari brand populer'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPopularBrandPromo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Promo menarik dari brand populer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Buat rileks atau produktif, kamu yang tentuin!', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Promos'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
      ],
    );
  }
}