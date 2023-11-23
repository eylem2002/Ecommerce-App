import 'package:ecommerce/HomePage/Componentes/Categories.dart';
import 'package:ecommerce/HomePage/Componentes/Hedear.dart';
import 'package:ecommerce/HomePage/Componentes/PopularProducts.dart';
import 'package:ecommerce/HomePage/Componentes/Special.dart';
import 'package:ecommerce/HomePage/Componentes/discount.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          padding:  const EdgeInsets.all(18),//EdgeInsets.symmetric(vertical: 16),
         
          child: Column(
            children: [
             
            const  Hedear(),
              Container(
                height: 25,
              ),
            const discount(),
              Container(
                  height: 25,
                ),
           const    Categories(),

            const    Special(),

             Container(
                  height: 15,
                ),
               const PopularProducts(),
               
              // SizedBox(height: 20),
            ],
          ),
          
        ),
        
      ),

    );
  }
}
