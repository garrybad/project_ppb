import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_ppb/styles/colors.dart';
import 'package:project_ppb/styles/text_style.dart';
import 'package:project_ppb/ui/login.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      //   backgroundColor: Colors.blue,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       // Aksi kembali
      //     },
      //   ),
      // ),
      body: Container(
        // padding: EdgeInsets.only(top: 100),
        color: kBgBlue, // Warna latar belakang biru
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50, bottom: 50),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/people.png',), // Ganti dengan gambar profil Anda
                    ),
                    // SizedBox(height: 20),
                    Text(
                      'Halo, Tegar Aji',
                      style: kHeading5.copyWith(
                        color: kBgWhite,
                      ),
                    ),
                    Text(
                      'Mari Mensejahterahkan Masyarakat',
                      style: kSubtitle1.copyWith(
                        color: kGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting', style: kBody1),
                    onTap: () {
                      // Aksi Setting
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help', style: kBody1),
                    onTap: () {
                      // Aksi Help
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Language', style: kBody1),
                    onTap: () {
                      // Aksi Language
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('Information', style: kBody1),
                    onTap: () {
                      // Aksi Information
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Mari Berkenalan dengan PKDI Lebih Dalam',
                            style: kSubtitle1.copyWith(
                              color: kBgWhite,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/project_logo.png', // Ganti dengan path logo PKDI Anda
                                    height: 24,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'PKDI',
                                    style: kBody1.copyWith(
                                      color: kBgWhite,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50), // Spasi antara logo PKDI dan tombol
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  minimumSize: Size(140, 40), // Ukuran tombol lebih kecil
                                ),
                                onPressed: () {
                                  // Aksi untuk tombol 'Tentang Kami'
                                },
                                icon: Image.asset(
                                  'assets/images/project_logo.png', // Ganti dengan path logo PKDI Anda
                                  height: 24,
                                ),
                                label: Text('Tentang Kami', style: kSubtitle1.copyWith(
                                  color: kBgWhite,
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('Logout', style: kSubtitle1.copyWith(
                          color: kBgWhite,
                        ),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          // minimumSize: Size(140, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // <-- Radius
                          ),// Ukuran tombol lebih kecil
                        ),
                        onPressed: () async {
                          FirebaseAuth.instance
                                  .signOut()
                                  .then((value) => Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginScreen(),
                                      ),
                                      (route) => false));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}