import 'package:flutter/material.dart';

class KodeNegaraDialog extends StatefulWidget {
  @override
  _KodeNegaraDialogState createState() => _KodeNegaraDialogState();
}

class _KodeNegaraDialogState extends State<KodeNegaraDialog> {
  TextEditingController _searchController = TextEditingController();
  final List<Map<String, dynamic>> _negaraPopuler = [
    {
      'flag': '🇮🇩',
      'nama': 'Indonesia',
      'kode': '+62',
    },
    {
      'flag': '🇻🇳',
      'nama': 'Vietnam',
      'kode': '+84',
    },
    {
      'flag': '🇹🇭',
      'nama': 'Thailand',
      'kode': '+66',
    },
  ];

  final List<Map<String, dynamic>> _semuaNegara = [
    {
      'flag': '🇦🇫',
      'nama': 'Afganistan',
      'kode': '+93',
    },
    {
      'flag': '🇦🇱',
      'nama': 'Albania',
      'kode': '+355',
    },
    {
      'flag': '🇩🇿',
      'nama': 'Algeria',
      'kode': '+213',
    },
    {
      'flag': '🇦🇸',
      'nama': 'American Samoa',
      'kode': '+1',
    },
    {
      'flag': '🇦🇩',
      'nama': 'Andorra',
      'kode': '+376',
    },
    // Tambahkan negara lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Text(
              'Cari kode negara',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
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
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Negara Populer',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _negaraPopuler.length,
                      itemBuilder: (context, index) {
                        final negara = _negaraPopuler[index];
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: Text(
                              negara['flag'],
                              style: TextStyle(fontSize: 28),
                            ),
                            title: Text(
                              negara['nama'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            trailing: Text(
                              negara['kode'],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Semua Negara',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _semuaNegara.length,
                      itemBuilder: (context, index) {
                        final negara = _semuaNegara[index];
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: Text(
                              negara['flag'],
                              style: TextStyle(fontSize: 28),
                            ),
                            title: Text(
                              negara['nama'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            trailing: Text(
                              negara['kode'],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
