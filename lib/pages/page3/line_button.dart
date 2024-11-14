import 'package:flutter/material.dart';
import 'package:lesson82/core_ui/app_text_style.dart';

class LineButton extends StatefulWidget {
  final ValueChanged<bool> parentAction;
  const LineButton({super.key, required this.parentAction});

  @override
  State<LineButton> createState() => LineButtonState();
}

// Для передачи данных между виджетами делаем виджет публичным
class LineButtonState extends State<LineButton> {
  bool home = true;
  Color color1 = Colors.white;
  Color color2 = const Color.fromRGBO(31, 100, 113, 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        childAspectRatio: 1.8,
        padding: const EdgeInsets.all(8),
        children: [
          Card(
            color: color2,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                setState(() {
                  if (!home) myswap();
                  home = true;
                });
                widget.parentAction(home);
              },
              child: Column(
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: color1,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: color1,
                      fontFamily: "Indie",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: color1,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                setState(() {
                  if (home) myswap();

                  home = false;
                });
                widget.parentAction(home);
              },
              child: Column(
                children: [
                  Icon(
                    Icons.star_outline_sharp,
                    color: color2,
                  ),
                  Text(
                    "Influencer",
                    style: TextStyle(
                      color: color2,
                      fontFamily: "Indie",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {},
              child: Column(
                children: [
                  const Icon(
                    Icons.help_center_outlined,
                    color: Color.fromRGBO(31, 100, 113, 1),
                  ),
                  Text("About", style: AppTextStyle.TextStyleMinBlackBold()),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {},
              child: Column(
                children: [
                  const Icon(
                    Icons.place_outlined,
                    color: Color.fromRGBO(31, 100, 113, 1),
                  ),
                  Text("Contact", style: AppTextStyle.TextStyleMinBlackBold()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void myswap() {
    setState(() {
      var tmp = color1;
      color1 = color2;
      color2 = tmp;
    });
  }
}
