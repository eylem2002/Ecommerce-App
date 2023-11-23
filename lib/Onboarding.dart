import 'package:ecommerce/content_model.dart';
import 'package:ecommerce/signs_pages/SignIn.dart';
import 'package:flutter/material.dart';



class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
 
  int currentindex=0;
  late PageController _controller;

  @override
   @override
  void initState() {
    super.initState();
    _controller=PageController(initialPage: 0);
    super.initState();

  }
  @override
  void dispose(){
    _controller.dispose();

    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
                itemCount: contents.length,
                onPageChanged:(int index){
                  setState(() {
                    currentindex=index;
                  });
                } ,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Column(
                      children: [
                        const
                        Text("TOKOTO",style: TextStyle(color: Color(0xffff7643),fontSize: 40,fontWeight: FontWeight.w600),),
                       Text("Welcome to Tokoto,Let's shop!",style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400,fontSize: 15)),
                        
                       Container(height: 65,),
                        Image.asset(contents[i].imgae,height: 250,width: 300 ,),
                      ],
                    ),
                  );
                }),
          ),
         
            //decoration: BoxDecoration(borderRadius: BorderRadius.circular(23)),
           
           Container(
            margin: const EdgeInsets.only(bottom: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length, 
              (index) => buildDot(index,context)
              )
            ),
           ),
           Container(
            padding: const EdgeInsets.only(bottom: 75),
            width: 350,
            height: 133,
            child: ElevatedButton(
              
            style: ButtonStyle(
             
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: const BorderSide(color: Color(0xffff7643),
                 
                 
                  )
                )
              )
            ),    
                child:const  Text("Continue",style: TextStyle(fontSize: 18 ),),
                
             onPressed: () { 
              if(currentindex==contents.length-1 ){
                Navigator.push(context, MaterialPageRoute(builder: (_) =>  const SignIn()) );
              }
              _controller.nextPage(duration: const Duration(microseconds: 100),  curve: Curves.bounceIn);
             },),
             
             


           )
          
            
          
            
         
        ],
      ),
    );
  }


   Container buildDot(int index,BuildContext context)
             {
            return  Container(
              height:10,
              width:currentindex==index?20:10,
              margin: const EdgeInsets.only(right:5 ),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffff7643),
              ),
              );


             }
}

