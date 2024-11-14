import 'package:flutter/material.dart';
import 'package:lesson82/pages/page3/poster_verticall_item.dart';

List<String> assets = [
  "assets/images/mask1.png",
  "assets/images/mask2.png",
  "assets/images/mask3.png",
  "assets/images/mask4.png",
  "assets/images/mask1.png",
  "assets/images/mask2.png",
  "assets/images/mask3.png",
  "assets/images/mask4.png",
  "assets/images/mask1.png",
  "assets/images/mask2.png",
  "assets/images/mask3.png",
  "assets/images/mask4.png",
];
List<String> myname = [
  "Rima Justiniano",
  "Felisa Plourde",
  "Marinda Beaudreau",
  "Cherry Engleman",
  "Rima Justiniano",
  "Felisa Plourde",
  "Marinda Beaudreau",
  "Cherry Engleman",
  "Rima Justiniano",
  "Felisa Plourde",
  "Marinda Beaudreau",
  "Cherry Engleman",
];
List<String> followers = [
  "1.4M",
  "500k",
  "1m",
  "2.4m",
  "1.4M",
  "500k",
  "1m",
  "2.4m",
  "1.4M",
  "500k",
  "1m",
  "2.4m",
];
List<String> posters = [
  "1344",
  "192",
  '340',
  "192",
  "1344",
  "192",
  '340',
  "192",
  "1344",
  "192",
  '340',
  "192",
];

class PosterVertically extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(),
    ]);
  }

  Widget _list() {
    return ListView.separated(
      itemCount: 12,
      separatorBuilder: separatorBuilder,
      itemBuilder: itemBuilder,
      scrollDirection: Axis.vertical,
    );
  }

  Widget separatorBuilder(BuildContext context, int index) {
    return const SizedBox(
      height: 5,
    );
  }

  Widget? itemBuilder(BuildContext context, int index) {
    final String asset = assets[index];
    final String name1 = myname[index];
    final String follower = followers[index];
    final String poster = posters[index];
    return Container(
      width: 350,
      height: 100,
      child: PosterVerticallItem(
          myassets: asset, name: name1, followers: follower, posts: poster),
    );
  }
}
