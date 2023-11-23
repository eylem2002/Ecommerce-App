import 'package:ecommerce/Classes/prodect.dart';
import 'package:ecommerce/Details/DetailsScreen.dart';
import 'package:ecommerce/tools/prodectCard.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        Container(
                      margin: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Popular Products",
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

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
                   SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        product: demoProducts[index],
                        
      onPress: () {// move to the prodect page detailes
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailsScreen(product: demoProducts[index]),
    ),
  );
}, onFavoriteChanged: (bool isFavorite) {  },
                     
                     
                     
                      ),
                    );
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}