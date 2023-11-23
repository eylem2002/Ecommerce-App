import 'package:ecommerce/CustomeBottomNavBar.dart';
import 'package:ecommerce/signs_pages/forgetpass.dart';
import 'package:ecommerce/signs_pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formfield = GlobalKey<FormState>();

  bool? ischecked = false;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passtoggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:const Color(0xffffffff),
           iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        // iconTheme: IconThemeData(
        //   color: Colors.black,
        // ),
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
                "Welcome Back",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 6,
              ),
              Text(
                "Sign in with your email and password\nor continue with social media",
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

              // here if the start of ROW of pass
              Container(
                //width: MediaQuery.of(context).size.width*0.4,
                margin: const EdgeInsets.only(top: 20, left: 30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: ischecked,
                      activeColor:const Color(0xffff7643),
                      onChanged: (newBool) {
                        setState(() {
                          ischecked = newBool;
                        });
                      },
                    ),
                    Text(
                      "Remember me",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Container(
                      width: 94,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const forgetpass()));
                        },
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Colors.grey[600],
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
              ),

              // here if the start of button
              Container(height: 30,),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                height: 60,
                child: InkWell(
                  onTap: () {
                    if (_formfield.currentState!.validate()) {
                      print("Success");
                      emailController.clear();
                      passController.clear();
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => const CustomeBottomNavBar()));
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
              Container(height: 50,),
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
              Container(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const register()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
