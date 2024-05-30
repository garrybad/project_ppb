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
        body: ListView(
          children: [
            Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://images.unsplash.com/photo-1528194764949-125c374c41af?q=80&w=1451&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Mengungkap Realitas, Menginspirasi Perubahan: Profil Kemiskinan Di Indonesia",
                            style: kHeading5.copyWith(
                                color: kBgWhite,
                                fontWeight: FontWeight.w600,
                              fontSize: 30
                            ),
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
                      style: kHeading6.copyWith(
                          color: kBgBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 30
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://images.unsplash.com/photo-1528194764949-125c374c41af?q=80&w=1451&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                        ),
                      ),
                    ),
                    Text(
                      '2 hari lalu',
                      style: kBody2.copyWith(
                          color: kBgBlack,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Upaya Pemberdayaan Ekonomi: Program Pelatihan Keterampilan untuk Mengurangi Kemiskinan',
                      style: kBody2.copyWith(
                        color: kBgBlack,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Nasional',
                      style: kBody2.copyWith(
                        color: kBgBlack,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Ayo Berbagi',
                      style: kHeading6.copyWith(
                          color: kBgBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 30
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          // Do something with the index
                        },
                      ),
                      items: [
                        Container(
                          color: Colors.red,
                          child: Center(
                            child: Text('Slide 1'),
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          child: Center(
                            child: Text('Slide 2'),
                          ),
                        ),
                        Container(
                          color: Colors.green,
                          child: Center(
                            child: Text('Slide 3'),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Tentang Kami',
                      style: kHeading6.copyWith(
                          color: kBgBlack,
                          fontWeight: FontWeight.w600,
                          fontSize: 30
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://images.unsplash.com/photo-1528194764949-125c374c41af?q=80&w=1451&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Kenal lebih dalam dengan PKDI",
                                style: kSubtitle1.copyWith(
                                    color: kBgWhite,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // ElevatedButton(
              //   onPressed: () async {
              //     FirebaseAuth.instance
              //         .signOut()
              //         .then((value) => Navigator.pushAndRemoveUntil(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => const LoginScreen(),
              //             ),
              //             (route) => false));
              //   },
              //   child: const Text('Keluar'),
              // ),
            ],
          )]
        ));
  }
}
