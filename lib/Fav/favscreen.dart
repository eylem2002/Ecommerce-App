import 'package:ecommerce/Details/DetailsScreen.dart';
import 'package:ecommerce/tools/prodectCard.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Classes/prodect.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Product> favoriteProducts = demoProducts.where((product) => product.isFavourite).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: favoriteProducts.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.7,
            mainAxisSpacing: 20,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) => ProductCard(
            product: favoriteProducts[index],
            onPress: () {   // Handle card tap as needed
            Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailsScreen(product: demoProducts[index]),
    ),
  );
            },
            onFavoriteChanged: (isFavourite) {
              setState(() {
                favoriteProducts = [...favoriteProducts]; // Create a new list
                final productIndex = favoriteProducts.indexWhere((product) => product.id == favoriteProducts[index].id);
                
                if (isFavourite) {
                  // Add the product to favorites
                  if (productIndex == -1) {
                    favoriteProducts.add(favoriteProducts[index]);
                  }
                } else {
                  // Remove the product from favorites
                  if (productIndex != -1) {
                    favoriteProducts.removeAt(productIndex);
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
