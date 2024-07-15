import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildAppBar(),
              _buildSearchBar(),
              _buildGopayCard(),
              _buildMainServices(),
              _buildXPCard(),
              _buildNearbySection(),
              _buildPromotions(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('19:20', style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: [
              Icon(Icons.signal_cellular_alt),
              Icon(Icons.wifi),
              Icon(Icons.battery_full),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Find services, food, or places',
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.person_outline),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  Widget _buildGopayCard() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('gopay', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              Text('Rp7,434', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildGopayOption(Icons.add, 'Top Up'),
              _buildGopayOption(Icons.payment, 'Pay'),
              _buildGopayOption(Icons.explore, 'Explore'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGopayOption(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _buildMainServices() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: [
          _buildServiceItem(Icons.motorcycle, 'GoRide', Colors.green),
          _buildServiceItem(Icons.car_rental, 'GoCar', Colors.green),
          _buildServiceItem(Icons.fastfood, 'GoFood', Colors.red),
          _buildServiceItem(Icons.local_shipping, 'GoSend', Colors.green),
          _buildServiceItem(Icons.shopping_cart, 'GoMart', Colors.red),
          _buildServiceItem(Icons.phone_android, 'GoPulsa', Colors.blue),
          _buildServiceItem(Icons.star, 'GoClub', Colors.purple),
          _buildServiceItem(Icons.more_horiz, 'More', Colors.grey),
        ],
      ),
    );
  }

  Widget _buildServiceItem(IconData icon, String label, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildXPCard() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.blue),
          SizedBox(width: 8),
          Text('121 XP to your next treasure'),
          Spacer(),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  Widget _buildNearbySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Restos near me', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.restaurant, size: 16),
                SizedBox(width: 4),
                Text('Best-seller in my area'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotions() {
    return Column(
      children: [
        _buildPromotionCard('Makin Seru 😄', 'Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia', Colors.blue),
        _buildPromotionCard('Makin Seru 😄', 'Sambungin Akun ke Tokopedia, Banyakin Untung', Colors.green),
        _buildPromotionCard('Makin Seru 😄', 'Promo Belanja Online 10.10: Cashback hingga Rp100.000', Colors.blue),
      ],
    );
  }

  Widget _buildPromotionCard(String title, String subtitle, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Promos'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Here you can add logic to change the displayed page based on the selected index
  }
}