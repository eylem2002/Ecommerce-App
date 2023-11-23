import 'package:ecommerce/Cart/CartShoppingPage.dart';
import 'package:flutter/material.dart';

class Special extends StatelessWidget {
  const Special({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20),
        //   child: SectionTitle(
        //     title: "Special for you",
        //     press: () {},
        //   ),
        // ),
        Container(height: 15,),
          Container(
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Special for you",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500]),
                        ),
                      )
                    ],
                  ),
                ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialCard(
                image: "ass/images/watch.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartShoppingPage()),
                        );
                },
              ),
                 const SizedBox(width: 20),
              SpecialCard(
                image: "ass/images/watch.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartShoppingPage()),
                        );
                },
              ),
              
             
           
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialCard extends  StatelessWidget {
  
  const SpecialCard({
     super.key, 
    required this.category, 
    required this.image,
     required this.numOfBrands, 
     required this.press,
  });
  final String category,image;
  final int numOfBrands;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return Container(child:   ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                  
                      Container(
                        width: 300,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(image), 
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2),
                              BlendMode.darken,
                            ),
                          ),
                        ),
                        child: Container(

                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "$category\n",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              Container(
                                height: 10,
                              ),
                              Text("$numOfBrands Brands",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                      
                
                  ]
                  
                  ))
                  
                  );
  }
}