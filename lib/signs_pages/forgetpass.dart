import 'package:ecommerce/signs_pages/register.dart';
import 'package:ecommerce/signs_pages/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class forgetpass extends StatefulWidget {
  const forgetpass({super.key});

  @override
  State<forgetpass> createState() => _forgetpass();
}

class _forgetpass extends State<forgetpass> {
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
                "Forgot  Password",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 6,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  "Please enter your email and we will send you a link to return to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
              ),
              Container(
                height: 100,
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
                height: 140,
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

              Container(
                height: 40,
              ),
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
