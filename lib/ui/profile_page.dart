import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_ppb/ui/login.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Aksi kembali
            // engkoh
          },
        ),
      ),
      body: Container(
        color: Colors.blue, // Warna latar belakang biru
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/people.png'), // Ganti dengan gambar profil Anda
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Halo, Tegar Aji',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Mari Mensejahterahkan Kemiskinan',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 30),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Setting'),
                        onTap: () {
                          // Aksi Setting
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.help),
                        title: Text('Help'),
                        onTap: () {
                          // Aksi Help
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.language),
                        title: Text('Language'),
                        onTap: () {
                          // Aksi Language
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.info),
                        title: Text('Information'),
                        onTap: () {
                          // Aksi Information
                        },
                      ),
                      Spacer(),
                      Divider(),
                      Container(
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
                                style: TextStyle(color: Colors.white, fontSize: 16),
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
                                        style: TextStyle(color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20), // Spasi antara logo PKDI dan tombol
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
                                    label: Text('Tentang Kami'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          minimumSize: Size(double.infinity, 50),
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
                        child: Text('Keluar'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}