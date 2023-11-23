import 'package:ecommerce/signs_pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<register> {
  final _formfield = GlobalKey<FormState>();

  bool? ischecked = false;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final passController2 = TextEditingController();
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
                "Register Account",
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
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: const EdgeInsets.all(24),
                      isDense: true,
                      hintText: "Enter your Email ",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: SvgPicture.asset("ass/icons/Mail.svg",
                          height: 35, width: 35, fit: BoxFit.scaleDown),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.1#$&'*+-/=?^_ {|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value);
                      if (!emailValid) {
                        return "Enter valid Email";
                      }
                      return null;
                    },
                  )),

              Container(
                height: 26,
              ), //sizeBox(height:20)

              //the start of password field
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child:

                      ////////////////////////
                      TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: passtoggle,
                    controller: passController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.red, width: 2)),

                      contentPadding: const EdgeInsets.all(22),
                      isDense: true,
                      hintText: "Enter your password ",
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      suffixIcon: SvgPicture.asset(
                        "ass/icons/Lock.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      ),

                      //  InkWell(
                      //   onTap: (){
                      //  setState(() {
                      //    passtoggle=!passtoggle;
                      //    setState(() {

                      //    });
                      //  });} ,
                      //  child: Icon(passtoggle? Icons.visibility:Icons.visibility_off),

                      //  )
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      } else if (passController.text.length < 6) {
                        return "Password length should be more than 6 characters";
                      }
                      return null;
                    },
                  )
                  ////////////////////////
                  ),
              Container(
                height: 26,
              ), //sizeBox(height:20)

              //the start of password field
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child:

                      ////////////////////////
                      TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: passtoggle,
                    controller: passController2,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.red, width: 2)),

                      contentPadding: const EdgeInsets.all(22),
                      isDense: true,
                      hintText: "Re-enter your password ",
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      suffixIcon: SvgPicture.asset(
                        "ass/icons/Lock.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      ),

                      //  InkWell(
                      //   onTap: (){
                      //  setState(() {
                      //    passtoggle=!passtoggle;
                      //    setState(() {

                      //    });
                      //  });} ,
                      //  child: Icon(passtoggle? Icons.visibility:Icons.visibility_off),

                      //  )
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      } else if (passController2.text.length < 6) {
                        return "Password length should be more than 6 characters";
                      } else if (passController.text != passController2.text) {
                        return "The password u entered is not the same above";
                      }
                      return null;
                    },
                  )
                  ////////////////////////
                  ),
              // here if the start of ROW of pass

              // here if the start of button
              Container(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                height: 60,
                child: InkWell(
                  onTap: () {
                    if (_formfield.currentState!.validate()) {
                      print("Success");
                      emailController.clear();
                      passController.clear();
                      passController2.clear();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const profile()));
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

              ///here is the social media row
              Container(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Google
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(158, 238, 238, 238),
                            borderRadius: BorderRadius.circular(500),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 147, 131, 131)
                                    .withOpacity(.1),
                                blurRadius: 10,
                              )
                            ]),
                        child: SvgPicture.asset(
                          'ass/icons/google_icon.svg',
                          height: 20,
                          width: 20,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    //facebook
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(158, 238, 238, 238),
                            borderRadius: BorderRadius.circular(500),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 147, 131, 131)
                                    .withOpacity(.1),
                                blurRadius: 10,
                              )
                            ]),
                        child: SvgPicture.asset(
                          'ass/icons/facebook.svg',
                          height: 20,
                          width: 20,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    //twitter
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(158, 238, 238, 238),
                            borderRadius: BorderRadius.circular(500),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 147, 131, 131)
                                    .withOpacity(.1),
                                blurRadius: 10,
                              )
                            ]),
                        child: SvgPicture.asset(
                          'ass/icons/twitter.svg',
                          height: 20,
                          width: 20,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
