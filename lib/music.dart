import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicfiy/customeWid/songbox.dart';

class MusicScr extends StatelessWidget {
  const MusicScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      appBar: AppBar(
        title: Text(
          "Musicfy",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 133, 9),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade700),
                margin: EdgeInsets.all(10),
                height: 30,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text(
                  "Likes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            MySong(
              text1: "Soopar Lox",
              text2: "Caramello",
              text3: 'note1.wav',
            ),
            MySong(text1: "Cairokee", text2: "Roma", text3: 'note2.wav'),
            MySong(text1: "MOUSV", text2: "Amtar", text3: 'note3.wav'),
            MySong(text1: "M83", text2: "Solitude", text3: 'note4.wav'),
            MySong(text1: "Tame Impala", text2: "New Gold", text3: 'note5.wav'),
            MySong(
                text1: "Donia Wael ft. El Waili",
                text2: "Taree2 Tweel",
                text3: 'note6.wav'),
            MySong(text1: "Lil Baba", text2: "Termo", text3: 'Batal.wav'),
          ],
        ),
      ),
    );
  }
}
