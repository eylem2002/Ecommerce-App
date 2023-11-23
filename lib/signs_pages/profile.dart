
import 'package:ecommerce/signs_pages/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final _formfield = GlobalKey<FormState>();

  bool? ischecked = false;

  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  
  bool passtoggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 70),

        // alignment: Alignment.topCenter,
        child: Form(
          key: _formfield,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Complete Profile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 6,
              ),
              Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey[700]),
              ),
              Container(
                height: 70,
              ),
              //here is the start of email adderss field
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: firstController,
                    decoration: InputDecoration(
                      labelText: "First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: const EdgeInsets.all(24),
                      isDense: true,
                      hintText: "Enter your first name ",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: SvgPicture.asset("ass/icons/User.svg",
                          height: 35, width: 35, fit: BoxFit.scaleDown),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter FirstName";
                      }
                      return null;
                    },
                  )),

              Container(
                height: 26,
              ),

              //the start of lastname field
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child:

                      ////////////////////////
                      TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: secondController,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.red, width: 2)),
                      contentPadding: const EdgeInsets.all(22),
                      isDense: true,
                      hintText: "Enter your last name ",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: SvgPicture.asset(
                        "ass/icons/User.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter LastName";
                      }
                      return null;
                    },
                  )),

              Container(
                height: 26,
              ),

              //the start of phone field
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child:

                      ////////////////////////
                      TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.red, width: 2)),
                      contentPadding: const EdgeInsets.all(22),
                      isDense: true,
                      hintText: "Enter your phone number",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: SvgPicture.asset(
                        "ass/icons/Phone.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Phone Number";
                      } else if (phoneController.text.length != 10) {
                        return "phone length should be 10 numbers";
                      }
                      return null;
                    },
                  )
                  ////////////////////////
                  ),
              // here if the start of address
              Container(
                height: 26,
              ),

              //the start of phone field
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child:

                      ////////////////////////
                      TextFormField(
                    keyboardType: TextInputType.text,
                    controller: addressController,
                    decoration: InputDecoration(
                      labelText: "Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.red, width: 2)),
                      contentPadding: const EdgeInsets.all(22),
                      isDense: true,
                      hintText: "Enter your Address",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: SvgPicture.asset(
                        "ass/icons/User.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Address";
                      }
                      return null;
                    },
                  )
                  ////////////////////////
                  ),

              // here if the start of button
              Container(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                height: 60,
                child: InkWell(
                  onTap: () {
                    if (_formfield.currentState!.validate()) {
                      print("Success");
                      firstController.clear();
                      secondController.clear();
                      phoneController.clear();
                      addressController.clear();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const verification()));
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffff7643),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                  "By countinuing your continue that you agree\nwith our term and condition",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12))
            ],
          ),
        ),
      ),
    );
  }
}
