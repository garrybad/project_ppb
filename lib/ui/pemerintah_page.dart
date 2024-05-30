import 'package:flutter/material.dart';

class PemerintahPage extends StatefulWidget {
  const PemerintahPage({super.key});

  @override
  State<PemerintahPage> createState() => _PemerintahPageState();
}

class _PemerintahPageState extends State<PemerintahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solusi Pemerintah'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildListItem(
            'assets/images/pendidikan.png', // Replace with your image
            'Pendidikan Inklusif',
            'Meningkatkan akses dan kualitas pendidikan untuk semua, dengan fokus pada anak-anak dari keluarga miskin. Program beasiswa, sekolah gratis, dan pelatihan keterampilan dapat membantu meningkatkan kemampuan masyarakat untuk bersaing di pasar kerja.',
          ),
          SizedBox(height: 16.0), // Add spacing between items
          _buildListItem(
            'assets/images/pemberdayaan.png', // Replace with your image
            'Pemberdayaan Wanita',
            'Memberikan kesempatan yang setara untuk perempuan di berbagai bidang, termasuk pendidikan dan pekerjaan, sehingga mereka yang memiliki potensi besar untuk meningkatkan kesejahteraan keluarga dan masyarakat.',
          ),
          SizedBox(height: 16.0), // Add spacing between items
          _buildListItem(
            'assets/images/pertanian.png', // Replace with your image
            'Pertanian dan Pangan',
            'Mendukung pertanian berkelanjutan dan ketahanan pangan dengan memberikan bantuan kepada petani, termasuk penyediaan pelatihan, teknologi, dan akses ke pasar bagi petani.',
          ),
          SizedBox(height: 16.0), // Add spacing between items
          _buildListItem(
            'assets/images/infrastruktur.png', // Replace with your image
            'Infrastruktur dan Akses Pelayanan Dasar',
            'Meningkatkan infrastruktur dasar seperti jalan, air bersih, dan sanitasi. Ini dapat meningkatkan akses masyarakat terhadap layanan dasar dan menciptakan kondisi untuk pertumbuhan ekonomi lokal.',
          ),
          SizedBox(height: 16.0), // Add spacing between items
          _buildListItem(
            'assets/images/pengembangan.png', // Replace with your image
            'Pengembangan Keterampilan dan Pelatihan',
            'Menyediakan pelatihan keterampilan dan pendidikan teknis kepada masyarakat agar mereka memiliki keterampilan yang sesuai dengan tuntutan pasar kerja. Ini dapat membantu memperluas peluang pekerjaan dan penghasilan.',
          ),
          SizedBox(height: 16.0), // Add spacing between items
          _buildListItem(
            'assets/images/kesehatan.png', // Replace with your image
            'Akses ke Layanan Kesehatan',
            'Meningkatkan akses ke layanan kesehatan yang terjangkau dan berkualitas, dengan fokus pada pencegahan penyakit dan peningkatan kesehatan ibu dan anak. Program asuransi kesehatan yang terjangkau juga dapat membantu meringankan beban biaya kesehatan.',
          ),
          SizedBox(height: 16.0), // Add spacing between items
          _buildListItem(
            'assets/images/bansos.png', // Replace with your image
            'Program Bantuan Sosial yang Efektif',
            'Merancang dan mengelola program bantuan sosial yang tepat sasaran, efisien, dan transparan. Pendekatan ini mencakup program bantuan tunai langsung atau program subsidi untuk kebutuhan dasar.',
          ),
          SizedBox(height: 16.0), // Add spacing between items
          _buildListItem(
            'assets/images/komunitas.png', // Replace with your image
            'Pemberdayaan Komunitas Lokal',
            'Memberdayakan komunitas lokal untuk mengidentifikasi dan menyelesaikan masalah mereka sendiri. Pendekatan partisipatif dan inklusif dapat memastikan bahwa solusi yang diusulkan memenuhi kebutuhan sebenarnya.',
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(String imagePath, String title, String description) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}