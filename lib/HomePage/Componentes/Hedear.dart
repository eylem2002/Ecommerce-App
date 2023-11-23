import 'package:ecommerce/Cart/CartShoppingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Hedear extends StatelessWidget {
  const Hedear({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.search, color: Colors.grey[700]),
                              const SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search product',
                                    hintStyle:
                                        TextStyle(color: Colors.grey[700]),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    _buildCircularIconButton2(
                      iconPath: 'ass/icons/Cart.svg',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartShoppingPage()),
                        );
                      },
                    ),
                    const SizedBox(width: 16),
                    _buildCircularIconButton(
                      iconPath: 'ass/icons/Bell.svg',
                      onPressed: () {},
                    ),
                  ],
                ),
              );
  }
}


Widget _buildCircularIconButton({
  required String iconPath,
  required VoidCallback onPressed,
}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: Center(
        child: SvgPicture.asset(
          iconPath,
          width: 22,
          height: 22,
        ),
      ),
    ),
  );
}

Widget _buildCircularIconButton2({
  required String iconPath,
  required VoidCallback onPressed,
}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: Center(
        child: SvgPicture.asset(
          iconPath,
          width: 22,
          height: 22,
        ),
      ),
    ),
  );
}
