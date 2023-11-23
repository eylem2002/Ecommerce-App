import 'package:ecommerce/Classes/prodect.dart';
import 'package:ecommerce/Details/ColorDots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                     Text(
                      
                      '${widget.product.rating}',
                      style: const TextStyle(
                      
                        fontSize: 16,
                          fontWeight: FontWeight.w600,
                         color: Colors.black,
                      ),
                    ),
                  
                    const SizedBox(width: 4),
                    SvgPicture.asset("ass/icons/StarIcon.svg"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70),
            alignment: Alignment.center,
            child: Column(
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200, // Adjust the height based on your preference
                      child: Image.asset(widget.product.images[selectedImage]),
                    ),
                   
                  
                  ],
                ),
 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int index = 0;
                        index < widget.product.images.length;
                        index++)
                      SmallProductImage(
                        isSelected: index == selectedImage,
                        press: () {
                          setState(() {
                            selectedImage = index;
                          });
                        },
                        image: widget.product.images[index],
                      ),
                  ],
                ),

                ///
                  const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  
                    const SizedBox(height: 16),
                    Text(
                      widget.product.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      
                      '\$${widget.product.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                      
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff7643),
                      ),
                    ),
                    Container(height: 50,),
                    SizedBox(
                    
                      width: 350,
                      child: Text(
                        
                        widget.product.description,
                        style: const TextStyle(
                        
                          fontSize: 17,
                         
                         
                        ),
                      ),
                    ),
                   
                  ],
                ),
                
              
               
              ],

            ),
            
          )
         , Container(
          margin: const EdgeInsets.only(right: 200,top: 30),
          child:  const Text(
                      
                      'see more details   >',
                      style: TextStyle(
                    
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff7643),
                      ),
                    ),),
       
       Container(
       color: Colors.grey[200],
        height: 80,
        
        margin: const EdgeInsets.only(top: 25),
        child: ColorDots(product:widget.product )),
        Container(height: 30,),
        SizedBox(
         


 
          width: 260,
          height: 60,
          child: ElevatedButton(onPressed: (){}, child: const Text("Add to Chart")))
        
        ],

        
      ),
    );
  }
}

class SmallProductImage extends StatelessWidget {
  const SmallProductImage({
    super.key,
    required this.isSelected,
    required this.press,
    required this.image,
  });

  final bool isSelected;
  final VoidCallback press;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedContainer(
        duration: Duration.zero,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: const Color(0xffff7643).withOpacity(isSelected ? 1 : 0)),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
