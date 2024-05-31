import 'package:flutter/material.dart';
import 'package:project_ppb/styles/colors.dart';
import 'package:project_ppb/styles/text_style.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('About',
              style: kHeading5.copyWith(
                color: kBgWhite,
              )),
          backgroundColor: kBgBlue,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Tentang Kami',
                      style: kHeading5.copyWith(
                          color: kBgBlack),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                              image: AssetImage('assets/images/image_about.png')),
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
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kenal lebih dalam dengan PKDI",
                              style: kSubtitle1.copyWith(
                                color: kBgWhite,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Mengubah Persepsi, Membangun Kesempatan, Bersama-Sama Melawan Kemiskinan.",
                              style: kBody2.copyWith(
                                color: kBgWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kami adalah tim yang berkomitmen untuk menyajikan profil kemiskinan dengan akurat dan berkelanjutan melalui platform ini. Melalui informasi yang kami sajikan, kami bertujuan untuk meningkatkan pemahaman dan kesadaran masyarakat tentang tantangan yang dihadapi oleh mereka yang berjuang melawan kemiskinan. Dengan tekad kuat, kami berupaya memberikan gambaran yang komprehensif, menggambarkan realitas kehidupan, serta menginspirasi langkah-langkah nyata menuju perubahan positif.",
                    style: kBody2.copyWith(
                      color: kBgBlack,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Project Member',
                      style: kHeading5.copyWith(
                          color: kBgBlack),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _profileMember('Muhammad Garry'),
                        SizedBox(
                          width: 20,
                        ),
                        _profileMember('Tegar Aji K.'),
                        SizedBox(
                          width: 20,
                        ),
                        _profileMember('Angelita Salshabilla'),
                        SizedBox(
                          width: 20,
                        ),
                        _profileMember('Muhammad Tafrihan'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Contact Us',
                      style: kHeading5.copyWith(
                          color: kBgBlack),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kami selalu tertarik untuk mendengar cerita anda serta menerima tanggapan anda. Jika anda memiliki penawaran kerjasama atau perlu sesuatu dari komunitas kami, dipersilakan untuk menghubungi kami melalui whatsapp, terima kasih.",
                    style: kBody2.copyWith(
                      color: kBgBlack,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Social',
                      style: kHeading5.copyWith(
                          color: kBgBlack),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/images/instagram.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/images/twitter.png'),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _profileMember(String name) {
    return Container(
      // margin: EdgeInsets.only(left: 30, right: 30, top: 20),
        width: 200,
        // height: 240,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: kBgWhite,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: kGrey,
                  blurRadius: 1,
                  offset: Offset.fromDirection(1, 2))
            ]),
        child: Column(
          children: [
            Image.asset('assets/images/character.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: kSubtitle1.copyWith(
                color: kBgBlack,
              ),
            )
          ],
        ));
  }
}
