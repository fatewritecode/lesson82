import 'package:flutter/material.dart';
import 'package:lesson82/core_ui/app_button_style.dart';
import 'package:lesson82/pages/page3/data_provider_Inherited.dart';
import 'package:lesson82/pages/page3/line_button.dart';
import 'package:lesson82/pages/page3/poster_horizon.dart';
import 'package:lesson82/pages/page3/poster_vertically.dart';
import 'package:lesson82/pages/top_interface2.dart';
import '../core_ui/app_text_style.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page5State();
}

class _Page5State extends State<Page3> {
  double sizeBild1 = 300;
  double sizeBild2 = 200;
  bool myHome = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              color: const Color.fromRGBO(31, 100, 113, 1),
              child: TopInterface2()),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: AppButtonStyle.raisedButtonStyleNormal,
                onPressed: () {},
                child: const Text('POPULAR'),
              ),
              const SizedBox(
                width: 40,
              ),
              Text("Swipe to explore infuencers",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.TextStyleMinBlackBold()),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: sizeBild1, //100
            color: Colors.white,
            child: DataProviderImherited(child: PosterHorizon(), value: myHome),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: sizeBild2, //400
              width: double.infinity,
              color: Colors.white,
              child: PosterVertically()),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  style: AppButtonStyle.raisedButtonStyleNormal2,
                  onPressed: () {},
                  child: Text(
                    'SEE MORE',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.TextStyleMin(),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          LineButton(
            parentAction: _updatePage,
          ),
        ],
      ),
    );
  }

  _updatePage(bool home) {
    setState(() {
      if (home) {
        sizeBild1 = 300;
        sizeBild2 = 200;
        myHome = true;
      } else {
        sizeBild1 = 100;
        sizeBild2 = 400;
        myHome = false;
      }
    });
  }
}
