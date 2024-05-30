import 'package:flutter/material.dart';
import 'package:project_ppb/styles/colors.dart';
import 'package:project_ppb/styles/text_style.dart';

class BeritaPage extends StatefulWidget {
  const BeritaPage({super.key});

  @override
  State<BeritaPage> createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Berita', style: kHeading5.copyWith(
            color: kBgWhite,)),
        backgroundColor: kBgBlue,
      ),
        body: ListView(
      children: [
        Padding(padding: const EdgeInsets.fromLTRB(30, 10, 30, 30), child: Column(
          children: [
            Column(
              children: [
                Text(
                  'Berita Utama',
                  style: kHeading5.copyWith(
                    color: kBgBlack,),
                ),
                SizedBox(
                  height: 10,
                ),
                _listBeritaUtama(
                    "https://images.unsplash.com/photo-1494537604714-7975224eea63?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                    "2 hari lalu",
                    'Upaya Pemberdayaan Ekonomi: Program Pelatihan Keterampilan untuk Mengurangi Kemiskinan',
                    'Nasional'),
                SizedBox(
                  height: 10,
                ),
                _listBeritaUtama(
                    "https://images.unsplash.com/photo-1494537604714-7975224eea63?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                    "2 hari lalu",
                    'Upaya Pemberdayaan Ekonomi: Program Pelatihan Keterampilan untuk Mengurangi Kemiskinan',
                    'Nasional'),
                SizedBox(
                  height: 10,
                ),
                _listBeritaUtama(
                    "https://images.unsplash.com/photo-1494537604714-7975224eea63?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                    "2 hari lalu",
                    'Upaya Pemberdayaan Ekonomi: Program Pelatihan Keterampilan untuk Mengurangi Kemiskinan',
                    'Nasional'),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Berita Lainya',
                  style: kHeading5.copyWith(
                    color: kBgBlack,),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1494537604714-7975224eea63?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Upaya Pemberdayaan Ekonomi: Program Pelatihan Keterampilan untuk Mengurangi Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1549983885-5c9eeb881f44?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Krisis Ekonomi Global Berdampak, Pemerintah Fokus pada Penanganan Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBeritaLainya(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),)
      ],
    ));
    ;
  }

  Widget _listBeritaUtama(
      String image, String added, String title, String category) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(image),
              ),
            ),
          ),
          Text(
            added,
            style: kBody2.copyWith(
              color: kBgGray,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: kBody2.copyWith(
              color: kBgBlack,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            category,
            style: kBody2.copyWith(
              color: kRed,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }

  Widget _listBeritaLainya(
      String image, String added, String title, String category) {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(image),
              ),
            ),
          ),
          Text(
            added,
            style: kBody2.copyWith(
              color: kBgGray,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: kBody2.copyWith(
              color: kBgBlack,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            category,
            style: kBody2.copyWith(
              color: kRed,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
