import 'package:flutter/material.dart';
import 'package:lesson82/pages/top_interface.dart';

import '../core_ui/app_images.dart';
import '../core_ui/app_text_style.dart';

List<String> text1 = [
  "Is it your friends birthday and you want to get her something unforgettable. Why not buy her a birthday greeting from her favorite influencer?",
  "Is your friend getting married and you want to send her a little extra special wedding wish? Who better than her favorite celebrity?",
  "Have you dreamt about appearing on the instagram story of your favorite influencer, why not buy a shoutout on her story tagging you for the world to see?",
];
List<String> text2 = ["SKIP", "SKIP", "DONE"];
List<String> images1 = [
  "assets/images/punkt1.png",
  "assets/images/punkt2.png",
  "assets/images/punkt3.png"
];

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              color: const Color.fromRGBO(31, 100, 113, 1),
              child: TopInterface()),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text(
                      "Create the perfect shoutout to your friends from "
                      "their favorite influencers",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.TextStyleNormalBollBlack()),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(text1[index],
                textAlign: TextAlign.center,
                style: AppTextStyle.TextStyleMinBlack()),
          ),
          const Spacer(),
          Image.asset(images1[index]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    if (index < 2) {
                      setState(() {
                        index++;
                      });
                    } else {
                      Navigator.pushNamed(context, '/C');
                    }
                  },
                  child: Text(
                    text2[index],
                    textAlign: TextAlign.center,
                    style: AppTextStyle.TextStyleNormalBlack(),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
