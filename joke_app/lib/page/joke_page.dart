import 'package:flutter/material.dart';
import 'package:joke_app/data/jokes.dart';
import 'package:joke_app/style/txt_style.dart';
import 'package:joke_app/widget/button_base.dart';
import 'package:joke_app/widget/image_base.dart';

class JokePage extends StatefulWidget {
  const JokePage({super.key});

  @override
  State<JokePage> createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ImageBase(
                    imagePath: 'assets/images/logo.png',
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'Handcrafted by',
                            style: TxtStyle.txt_14_grey,
                          ),
                          Text(
                            'Jim HLS',
                            style: TxtStyle.txt_16_black,
                          )
                        ],
                      ),
                      const ImageBase(
                        imagePath: 'assets/images/avatar.png',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'A joke a day keeps the doctor away',
                      style: TxtStyle.txt_20_white,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'If you joke wrong away, your teeth have to pay. (Serious)',
                      style: TxtStyle.txt_14_white,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 24, right: 24),
                child: Text(
                  jokes[index],
                  style: TxtStyle.txt_16_black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonBase(
                    text: 'This is Funny!',
                    onTap: () => _nextJoke(),
                  ),
                  ButtonBase(
                    text: 'This is not funny.',
                    isFun: false,
                    onTap: () => _nextJoke(),
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                Divider(),
                Text(
                  'This app is created as part of HLsolutions program. The material contained on this website are provided for general infomation only and do not constitute any form of advice. HSL assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss and damage which many arise from reliance on the information contained on this site.',
                  style: TxtStyle.txt_14_grey,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                  child: Text(
                    'Copyright 2021 HLS',
                    style: TxtStyle.txt_16_grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _nextJoke() {
    if (index < jokes.length - 1) {
      setState(() {
        index++;
      });
    }
  }
}
