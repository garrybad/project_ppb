import 'package:flutter/material.dart';
import 'package:project_ppb/styles/colors.dart';
import 'package:project_ppb/styles/text_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DonasiPage extends StatefulWidget {
  const DonasiPage({super.key});

  @override
  State<DonasiPage> createState() => _DonasiPageState();
}

class _DonasiPageState extends State<DonasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Donasi',
            style: kHeading5.copyWith(
              color: kBgWhite,
            )),
        backgroundColor: kBgBlue,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
        children: [
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
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Rekomendasi Donasi',
              style: kHeading5.copyWith(
                color: kBgBlack,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _listDonasi(
              'assets/images/img_donations_1.jpeg', // Replace with your image
              'Company Baik',
              '#GerobakGratis Nolong Keluarga Dhuafa Bisa Makan',
              'Rp50.000.000'),
          SizedBox(height: 15.0),
          _listDonasi(
              'assets/images/img_donations_2.jpeg', // Replace with your image
              'Penghubung Kebaikan',
              'Bantu Pejuang Gagal Ginjal Anak Pulih & Bertahan',
              'Rp50.000.000'),
          SizedBox(height: 15.0),
          _listDonasi(
              'assets/images/img_donations_3.jpeg', // Replace with your image
              'Penghubung Kebaikan',
              'Ayo Berikan Semangat untuk Lansia Dhuafa Pejuang Sembuh',
              'Rp50.000.000'),
          SizedBox(height: 15.0),
          _listDonasi(
              'assets/images/img_donations_4.jpeg', // Replace with your image
              'YBM Hasuna',
              'Berbagi Beras Tuk Lansia Dhuafa di Pelosok',
              'Rp50.000.000'),
        ],
      ),
    );
  }

  Widget _listDonasi(
      String imagePath, String title, String description, String total) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: kHeading6.copyWith(
                    color: kBgBlack,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  description,
                  style: kBody2.copyWith(
                    color: kBgBlack,
                  ),
                ),
                SizedBox(height: 5.0),
                RichText(
                    text: TextSpan(
                        text: 'Terkumpul ',
                        style: kBody2.copyWith(
                          color: kBgBlack,
                        ),
                        children: [
                      TextSpan(
                          text: total,
                          style: kBody2.copyWith(
                            color: kBgBlue,
                          ))
                    ])),
                SizedBox(
                  height: 5,
                ),
                LinearPercentIndicator(
                  lineHeight: 4,
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  percent: 0.5,
                  progressColor: kBgBlue,
                  backgroundColor: kGrey.withOpacity(0.3),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
