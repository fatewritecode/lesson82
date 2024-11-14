import 'package:flutter/material.dart';
import 'package:lesson82/core_ui/app_text_style.dart';

import '../core_ui/app_images.dart';

class TopInterface2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.panorama_fish_eye,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.perm_identity,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset(AppImages.imagFrame1),
            ),
            const Spacer(),
            Center(
              child: Text(
                "FLEEQUE",
                style: AppTextStyle.TextStyleHeadline(),
              ),
            ),
            const Spacer(),
            Container(
              child: Image.asset(AppImages.imagFrame2),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
