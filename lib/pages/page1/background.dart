import 'package:flutter/material.dart';
import 'package:lesson82/core_ui/app_images.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.imagNamePage1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
