import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('Show Country Code Search'),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => CountryCodeSearchScreen(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CountryCodeSearchScreen extends StatefulWidget {
  @override
  _CountryCodeSearchScreenState createState() =>
      _CountryCodeSearchScreenState();
}

class _CountryCodeSearchScreenState extends State<CountryCodeSearchScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cari kode negara',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Ketik nama atau kode negara',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  onChanged: (value) {
                    setState(() {
                      // Update the list based on search
                    });
                  },
                ),
                SizedBox(height: 24),
                Text(
                  'Negara Populer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                CountryListTile(flag: '🇮🇩', name: 'Indonesia', code: '+62'),
                Divider(),
                CountryListTile(flag: '🇻🇳', name: 'Vietnam', code: '+84'),
                Divider(),
                CountryListTile(flag: '🇹🇭', name: 'Thailand', code: '+66'),
                Divider(),
                SizedBox(height: 24),
                Text(
                  'Semua Negara',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Expanded(
                  child: ListView(
                    children: [
                      CountryListTile(
                          flag: '🇦🇫', name: 'Afghanistan', code: '+93'),
                      Divider(),
                      CountryListTile(
                          flag: '🇦🇱', name: 'Albania', code: '+355'),
                      Divider(),
                      CountryListTile(
                          flag: '🇩🇿', name: 'Algeria', code: '+213'),
                      Divider(),
                      CountryListTile(
                          flag: '🇦🇸', name: 'American Samoa', code: '+1'),
                      Divider(),
                      CountryListTile(
                          flag: '🇦🇩', name: 'Andorra', code: '+376'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CountryListTile extends StatelessWidget {
  final String flag;
  final String name;
  final String code;

  CountryListTile({required this.flag, required this.name, required this.code});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(flag, style: TextStyle(fontSize: 24)),
          SizedBox(width: 16),
          Expanded(child: Text(name, style: TextStyle(fontSize: 16))),
          Text(code, style: TextStyle(fontSize: 16, color: Colors.grey)),
        ],
      ),
    );
  }
}
