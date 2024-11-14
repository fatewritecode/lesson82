import 'package:flutter/material.dart';
import 'package:lesson82/core_ui/app_text_style.dart';

import 'data_provider_Inherited.dart';

List<String> name = ["Jon Konar", "Ben Laden", "Jonny Depp"];
List<String> followers = ["172K FOLLOWERS", "2K FOLLOWERS", '50K FOLLOWERS'];
List<String> posters = ["2999 POSTS", "289 POSTS", '89 POSTS'];

class PosterHorizon extends StatefulWidget {
  @override
  State<PosterHorizon> createState() => _PosterHorizonState();
}

class _PosterHorizonState extends State<PosterHorizon> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(),
    ]);
  }

  Widget _list() {
    return ListView.separated(
      itemCount: 3,
      separatorBuilder: separatorBuilder,
      itemBuilder: itemBuilder,
      scrollDirection: Axis.horizontal,
    );
  }

  Widget separatorBuilder(BuildContext context, int index) {
    return const SizedBox(
      width: 10,
    );
  }

  Widget? itemBuilder(BuildContext context, int index) {
    final String item = "$index";
    final String myname = name[index];
    final String myposters = posters[index];
    final String myfollowers = followers[index];
    final value = context
            .dependOnInheritedWidgetOfExactType<DataProviderImherited>()
            ?.value ??
        true;
    if (value) {
      return Container(
        width: 250,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/mann$item.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 220,
            ),
            Text(
              "$myname",
              style: AppTextStyle.TextStylePoster1g(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("$myfollowers", style: AppTextStyle.TextStylePoster2g()),
            Text("$myposters", style: AppTextStyle.TextStylePoster2g()),
          ],
        ),
      );
    }
    return Container(
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/mann$item.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
