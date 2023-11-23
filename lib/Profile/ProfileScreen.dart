import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const SizedBox(
      height: 130,
      width: 130,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("ass/images/Profile Image.png"),
          ),
          
        ],
      ),),)

      
            , const SizedBox(height: 45),
            ProfileMenu(
              text: "My Profile",
              icon: "ass/icons/User Icon.svg",
              press: () {},
            ),
             const SizedBox(height: 10),
            ProfileMenu(
              text: "Notification",
              icon: "ass/icons/Bell.svg",
              press: () {},
            ),
              const SizedBox(height: 10),
            ProfileMenu(
              text: "Settings",
              icon: "ass/icons/Settings.svg",
              press: () {},
            ),
             const SizedBox(height: 10),
            ProfileMenu(
              text: "Log Out",
              icon: "ass/icons/Logout.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    this.press,
  });

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: const Color(0xffff7643), padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        
        child: Row(
          children: [
            SvgPicture.asset(
              icon, color:const Color(0xffff7643),
              width: 25,
            ),
            const SizedBox(width: 10),
            Expanded(child: Text(text)),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}