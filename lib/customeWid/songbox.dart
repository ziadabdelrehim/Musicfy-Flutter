import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

class MySong extends StatefulWidget {
  MySong({required this.text1, required this.text2, required this.text3});
  final String text1;
  final String text2;
  final String text3;

  State<MySong> createState() => _MySongState();

  var player = AudioPlayer();
  bool flag = true;
}

class _MySongState extends State<MySong> {
  PlayMusic() {
    setState(() {
      widget.player.play(AssetSource(widget.text3));
      widget.flag = false;
    });
  }

  StopMusic() {
    setState(() {
      widget.player.stop();
      widget.flag = true;
    });
    widget.player.stop();
    widget.flag = true;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(5),
      color: Colors.grey.shade700,
      shadowColor: Color.fromARGB(255, 43, 41, 41),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text1,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  widget.text2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            InkWell(
              onTap: () {
                if (widget.flag == true) {
                  PlayMusic();
                } else {
                  StopMusic();
                }
              },
              child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 3, 133, 9),
                  child: (widget.flag)
                      ? Icon(
                          Icons.play_arrow_rounded,
                          size: 40,
                          color: Color.fromARGB(255, 43, 41, 41),
                        )
                      : Icon(
                          Icons.stop,
                          size: 40,
                          color: Color.fromARGB(255, 43, 41, 41),
                        )),
            )
          ],
        ),
      ),
    );
  }
}
