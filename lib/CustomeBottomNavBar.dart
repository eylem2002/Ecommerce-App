

import 'package:ecommerce/Fav/favscreen.dart';
import 'package:ecommerce/HomePage/Homescreen.dart';
import 'package:ecommerce/Profile/pro.dart';
import 'package:ecommerce/chatpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class CustomeBottomNavBar extends StatelessWidget {
  const CustomeBottomNavBar({super.key});
  
 
  



  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    return  Scaffold(
    bottomNavigationBar: Obx(
      ()=> NavigationBar(
        height: 80, 
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
       onDestinationSelected: (index) =>  controller.selectedIndex.value=index,
        destinations:const  [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.favorite), label: 'Faviorte'),
        NavigationDestination(icon: Icon(Icons.messenger), label: 'Chat'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
           
    
        ],
      ),
    ),
    body:Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}



class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;
  final screens =[const Homescreen(),FavoriteScreen(),chatpage(),pro()];
}
  
