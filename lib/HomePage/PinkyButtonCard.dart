import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class PinkyButtonCard extends StatefulWidget {
  final String iconPath;

  const PinkyButtonCard({super.key, 
    required this.iconPath,
  });

  @override
  _PinkyButtonCardState createState() => _PinkyButtonCardState();
}

class _PinkyButtonCardState extends State<PinkyButtonCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
        // Additional logic if needed
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isPressed ?  const Color(0xffffecdb)  : Colors.grey[200],
        ),
        child: Center(
          child: SvgPicture.asset(
            widget.iconPath,
            width: 16,
            height: 16,
            color: isPressed ? Colors.orange : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
