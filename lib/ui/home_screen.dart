import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_ppb/styles/colors.dart';
import 'package:project_ppb/styles/text_style.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1528194764949-125c374c41af?q=80&w=1451&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.black.withOpacity(0.5),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mengungkap Realitas, Menginspirasi Perubahan: Profil Kemiskinan Di Indonesia",
                        style: kHeading5.copyWith(
                            color: kBgWhite),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Berita Terbaru',
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
                      _listBerita(
                          "https://images.unsplash.com/photo-1494537604714-7975224eea63?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Upaya Pemberdayaan Ekonomi: Program Pelatihan Keterampilan untuk Mengurangi Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBerita(
                          "https://images.unsplash.com/photo-1549983885-5c9eeb881f44?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Krisis Ekonomi Global Berdampak, Pemerintah Fokus pada Penanganan Kemiskinan',
                          'Nasional'),
                      SizedBox(
                        width: 15,
                      ),
                      _listBerita(
                          "https://images.unsplash.com/photo-1548472730-471d75f20ca1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHBvdmVydHl8ZW58MHx8MHx8fDA%3D",
                          "2 hari lalu",
                          'Mengatasi Kelaparan: Inisiatif Baru untuk Mengurangi Angka Kemiskinan',
                          'Nasional'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Ayo Berbagi',
                  style: kHeading5.copyWith(
                      color: kBgBlack,),
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    // height: 400.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      // Do something with the index
                    },
                  ),
                  items: [
                    Image.asset('assets/images/img_donations_5.jpeg'),
                    Image.asset('assets/images/img_donations_6.jpeg'),
                    Image.asset('assets/images/img_donations_7.jpeg'),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    ]));
  }

  Widget _listBerita(
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
