import 'package:flutter/material.dart';

class discount extends StatelessWidget {
  const discount({super.key});

  @override
  Widget build(BuildContext context) {
    return  
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 64, 8, 133),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "A Summer Surpise",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: 10,
                      ),
                      const Text(
                        "Cashback 20%",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ],
                  ),
                ),
              );
  }
}