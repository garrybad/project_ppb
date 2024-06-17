import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_ppb/styles/colors.dart';
import 'package:project_ppb/styles/text_style.dart';

class PemerintahPage extends StatefulWidget {
  const PemerintahPage({super.key});

  @override
  State<PemerintahPage> createState() => _PemerintahPageState();
}

final _firestore = FirebaseFirestore.instance;

class _PemerintahPageState extends State<PemerintahPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Solusi Pemerintah',
            style: kHeading5.copyWith(
              color: kBgWhite,
            )),
        backgroundColor: kBgBlue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                            controller: titleController,
                            decoration:
                                const InputDecoration(hintText: 'Judul')),
                        const SizedBox(height: 10.0),
                        SizedBox(
                            height: 300,
                            child: TextFormField(
                                controller: noteController,
                                maxLines: null,
                                // Set this
                                expands: true,
                                // and this
                                keyboardType: TextInputType.multiline,
                                decoration: const InputDecoration(
                                    hintText: 'Deskripsi', filled: true))),
                        Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        try {
                                          DocumentReference docRef =
                                              await _firestore
                                                  .collection('tasks')
                                                  .add({
                                            'title': titleController.text,
                                            'note': noteController.text,
                                            'timestamp':
                                                FieldValue.serverTimestamp(),
                                          });
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content:
                                                    Text('Note ditambahkan')),
                                          );
                                          Navigator.pop(context);
                                        } catch (e) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(content: Text('$e')),
                                          );
                                        }
                                      }
                                    },
                                    child: const Text('Save'))))
                      ],
                    ),
                  ),
                );
              });
        },
        child: const Icon(Icons.add, color: kBgWhite,),
        backgroundColor: kBgBlue,
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream:
              _firestore.collection('tasks').orderBy('timestamp').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  final titleEdc =
                      TextEditingController(text: data['title'].toString());
                  final noteEdc =
                      TextEditingController(text: data['note'].toString());

                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 170.0, // Set your minimum height here
                    ),
                    child: SizedBox(
                      // height: 170.0,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: Text(data['title'],
                                        maxLines: 3,
                                        style: kHeading6.copyWith(
                                          color: kBgBlack,
                                        ),),
                                  ),
                                  GestureDetector(
                                      onTap: () {},
                                      child: PopupMenuButton<String>(
                                        onSelected: (value) {
                                          if (value == 'edit') {
                                            //tindakan edit
                                            showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                builder: (context) {
                                                  return Padding(
                                                    padding: const EdgeInsets.all(
                                                        16.0),
                                                    child: Form(
                                                      key: _formKey,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          TextFormField(
                                                            controller: titleEdc,
                                                          ),
                                                          const SizedBox(
                                                              height: 10.0),
                                                          SizedBox(
                                                              height: 300,
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    noteEdc,
                                                                maxLines: null,
                                                                // Set this
                                                                expands: true,
                                                                // and this
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                              )),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  bottom: MediaQuery.of(
                                                                          context)
                                                                      .viewInsets
                                                                      .bottom),
                                                              child: SizedBox(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  child:
                                                                      ElevatedButton(
                                                                          onPressed:
                                                                              () async {
                                                                            if (_formKey
                                                                                .currentState!
                                                                                .validate()) {
                                                                              try {
                                                                                await _firestore.collection('tasks').doc(document.id).update({
                                                                                  'title': titleEdc.text,
                                                                                  'note': noteEdc.text,
                                                                                  'timestamp': FieldValue.serverTimestamp(),
                                                                                });
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  const SnackBar(content: Text('Solusi pemerintah berhasil diperbarui')),
                                                                                );
                                                                                Navigator.pop(context);
                                                                              } catch (e) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(content: Text('$e')),
                                                                                );
                                                                              }
                                                                            }
                                                                          },
                                                                          child: const Text(
                                                                              'Save'))))
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                });
                                          } else if (value == 'delete') {
                                            //tindakan delete
                                            String documentId = document.id;
                                            _firestore
                                                .collection('tasks')
                                                .doc(documentId)
                                                .delete();
                                          }
                                        },
                                        itemBuilder: (BuildContext context) => [
                                          const PopupMenuItem<String>(
                                            value: 'edit',
                                            child: Text('Edit'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'delete',
                                            child: Text('Hapus'),
                                          ),
                                        ],
                                        child: Icon(Icons.more_vert_outlined),
                                      ))
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              Text(data['note'],
                                  // textAlign: TextAlign.justify,
                                  // maxLines: 5,
                                  style: kBody2.copyWith(
                                    color: kBgBlack,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }),
      // body: ListView(
      //   padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
      //   children: <Widget>[
      //     _buildListItem(
      //       'assets/images/pendidikan.png', // Replace with your image
      //       'Pendidikan Inklusif',
      //       'Meningkatkan akses dan kualitas pendidikan untuk semua, dengan fokus pada anak-anak dari keluarga miskin. Program beasiswa, sekolah gratis, dan pelatihan keterampilan dapat membantu meningkatkan kemampuan masyarakat untuk bersaing di pasar kerja.',
      //     ),
      //     SizedBox(height: 15.0), // Add spacing between items
      //     _buildListItem(
      //       'assets/images/pemberdayaan.png', // Replace with your image
      //       'Pemberdayaan Wanita',
      //       'Memberikan kesempatan yang setara untuk perempuan di berbagai bidang, termasuk pendidikan dan pekerjaan, sehingga mereka yang memiliki potensi besar untuk meningkatkan kesejahteraan keluarga dan masyarakat.',
      //     ),
      //     SizedBox(height: 15.0), // Add spacing between items
      //     _buildListItem(
      //       'assets/images/pertanian.png', // Replace with your image
      //       'Pertanian dan Pangan',
      //       'Mendukung pertanian berkelanjutan dan ketahanan pangan dengan memberikan bantuan kepada petani, termasuk penyediaan pelatihan, teknologi, dan akses ke pasar bagi petani.',
      //     ),
      //     SizedBox(height: 15.0), // Add spacing between items
      //     _buildListItem(
      //       'assets/images/infrastruktur.png', // Replace with your image
      //       'Infrastruktur dan Akses Pelayanan Dasar',
      //       'Meningkatkan infrastruktur dasar seperti jalan, air bersih, dan sanitasi. Ini dapat meningkatkan akses masyarakat terhadap layanan dasar dan menciptakan kondisi untuk pertumbuhan ekonomi lokal.',
      //     ),
      //     SizedBox(height: 15.0), // Add spacing between items
      //     _buildListItem(
      //       'assets/images/pengembangan.png', // Replace with your image
      //       'Pengembangan Keterampilan dan Pelatihan',
      //       'Menyediakan pelatihan keterampilan dan pendidikan teknis kepada masyarakat agar mereka memiliki keterampilan yang sesuai dengan tuntutan pasar kerja. Ini dapat membantu memperluas peluang pekerjaan dan penghasilan.',
      //     ),
      //     SizedBox(height: 15.0), // Add spacing between items
      //     _buildListItem(
      //       'assets/images/kesehatan.png', // Replace with your image
      //       'Akses ke Layanan Kesehatan',
      //       'Meningkatkan akses ke layanan kesehatan yang terjangkau dan berkualitas, dengan fokus pada pencegahan penyakit dan peningkatan kesehatan ibu dan anak. Program asuransi kesehatan yang terjangkau juga dapat membantu meringankan beban biaya kesehatan.',
      //     ),
      //     SizedBox(height: 15.0), // Add spacing between items
      //     _buildListItem(
      //       'assets/images/bansos.png', // Replace with your image
      //       'Program Bantuan Sosial yang Efektif',
      //       'Merancang dan mengelola program bantuan sosial yang tepat sasaran, efisien, dan transparan. Pendekatan ini mencakup program bantuan tunai langsung atau program subsidi untuk kebutuhan dasar.',
      //     ),
      //     SizedBox(height: 16.0), // Add spacing between items
      //     _buildListItem(
      //       'assets/images/komunitas.png', // Replace with your image
      //       'Pemberdayaan Komunitas Lokal',
      //       'Memberdayakan komunitas lokal untuk mengidentifikasi dan menyelesaikan masalah mereka sendiri. Pendekatan partisipatif dan inklusif dapat memastikan bahwa solusi yang diusulkan memenuhi kebutuhan sebenarnya.',
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildListItem(String imagePath, String title, String description) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.asset(imagePath, fit: BoxFit.cover),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
