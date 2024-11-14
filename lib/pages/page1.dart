import 'package:flutter/material.dart';
import 'package:lesson82/pages/page1/background.dart';
import 'package:lesson82/pages/page2.dart';
import 'package:lesson82/pages/top_interface.dart';

import '../core_ui/app_text_style.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        TopInterface(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Spacer(),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Spacer(),
                Text("Welcome to", style: AppTextStyle.TextStyleHeadline()),
                const Spacer(),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Spacer(),
                Text("FLEEQUE", style: AppTextStyle.TextStyleSuper()),
                const Spacer(),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Spacer(),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                        Color.fromRGBO(31, 100, 113, 1)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/B');
                  },
                  child: Text(
                    'GET STARTED',
                    style: AppTextStyle.TextStyleNormal(),
                  ),
                ),
                const Spacer(),
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
      ],
    );
  }
}
