import 'package:ecommerce/items/Bill.dart';
import 'package:ecommerce/items/DailyGift.dart';
import 'package:ecommerce/items/FlashDeal.dart';
import 'package:ecommerce/items/Game.dart';
import 'package:ecommerce/items/More.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return 
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoxWidget(
                      boxName: "FlashDeal",
                      str: "Flash",
                      iconColor: const Color(0xffff7643),
                      boxColor: const Color(0xffffecdb),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FlashDeal()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    BoxWidget(
                      boxName: "Bill",
                      str: "Bill",
                      iconColor: const Color(0xffff7643),
                      boxColor: const Color(0xffffecdb),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Bill()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    BoxWidget(
                      boxName: "Game",
                      str: "Game",
                      iconColor: const Color(0xffff7643),
                      boxColor: const Color(0xffffecdb),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Game()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    BoxWidget(
                      boxName: "Gift",
                      str: "Gift",
                      iconColor: const Color(0xffff7643),
                      boxColor: const Color(0xffffecdb),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DailyGift()),
                        );
                      },
                    ),
                    const SizedBox(width: 20),
                    BoxWidget(
                      boxName: "More",
                      str: "location",
                      iconColor: const Color(0xffff7643),
                      boxColor: const Color(0xffffecdb),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const More()),
                        );
                      },
                    ),
                  ],
                );
              
  }
}



///
class BoxWidget extends StatelessWidget {
  final String boxName;
  //final IconData iconData;
  final String str;
  final Color iconColor;
  final Color boxColor;
  final VoidCallback onPressed;

  const BoxWidget({super.key, 
    required this.boxName,
    required this.str,
    required this.iconColor,
    required this.boxColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Call the onPressed callback when the box is tapped
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "ass/icons/$str.svg",
              height: 55,
              width: 55,
              color: const Color(0xffff7643),
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(height: 8),
          Text(boxName),
        ],
      ),
    );
  }
}
