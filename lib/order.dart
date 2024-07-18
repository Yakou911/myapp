import 'package:flutter/material.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderScreen(),
    );
  }
}

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Pesanan',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(text: 'Riwayat'),
              Tab(text: 'Dalam proses'),
              Tab(text: 'Terjadwal'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OrderHistoryTab(),
            Center(child: Text('Dalam proses')),
            Center(child: Text('Terjadwal')),
          ],
        ),
      ),
    );
  }
}

class OrderHistoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ChoiceChip(label: Text('GoFood'), selected: true),
              SizedBox(width: 8),
              DropdownButton<String>(
                value: 'Status',
                onChanged: (String? newValue) {},
                items: <String>['Status', 'Delivered', 'Pending']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Image.asset(
            'images/gopay.png', // Use the PNG image for the leading widget
          ),
          title: Text('Transaksi Gopay'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        OrderItem(),
        OrderItem(),
        OrderItem(),
      ],
    );
  }
}

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white, // Set the background color of the card to white
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.restaurant_menu, color: Colors.red),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Ayam Benjoss, kedungkandang',
                style: TextStyle(
                    fontWeight: FontWeight.bold), // Set the title text to bold
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('3 item'),
                Text('2 Paket Ayam Bakar Jumbo, 1 Nasi Goreng'),
                Text('Makanan sudah diantar\n28 Des 11:36'),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    'Rp.58.800',
                    style: TextStyle(
                        fontWeight:
                            FontWeight.bold), // Set the price text to bold
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green,
                    backgroundColor: Colors
                        .white, // Set the text color of the button to green
                    side: BorderSide(
                        color: Colors.green), // Set the border color to green
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  ),
                  child: Text('Pesan lagi'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
