import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 6,
            height: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/ppbaru.jpeg'),
                )
              ],
            ),
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 12),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: const [
                        Text(
                          'Nama :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          ' Muhammad Rizki Firmansyah',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: const [
                        Text(
                          'NIM :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          '123200064',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: const [
                        Text(
                          'Kelas :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Teknologi Pemrograman Mobile IF-E',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: const [
                        Text(
                          'Hobi :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Musik dan Game',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
