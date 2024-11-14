import 'package:flutter/material.dart';
import 'package:lesson82/core_ui/app_text_style.dart';

class PosterVerticallItem extends StatelessWidget {
  final String myassets;
  final String name;
  final String followers;
  final String posts;
  const PosterVerticallItem({
    super.key,
    required this.myassets,
    required this.name,
    required this.followers,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            children: [
              _images(),
              const SizedBox(
                width: 20,
              ),
              _title(),
              const SizedBox(
                width: 120,
              ),
              _title2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _images() {
    return Container(
      child: Image.asset(myassets),
    );
  }

  Widget _title() {
    return Column(children: [
      const SizedBox(
        height: 15,
      ),
      Text(name, style: AppTextStyle.TextStyleMinBlackBold()),
      const SizedBox(
        height: 15,
      ),
      Text("followers", style: AppTextStyle.TextStyleMinBlack()),
      Text("posts", style: AppTextStyle.TextStyleMinBlack())
    ]);
  }

  Widget _title2() {
    return Column(children: [
      const SizedBox(
        height: 45,
      ),
      Text(followers, style: AppTextStyle.TextStyleMinBlack()),
      Text(posts, style: AppTextStyle.TextStyleMinBlack())
    ]);
  }
}
