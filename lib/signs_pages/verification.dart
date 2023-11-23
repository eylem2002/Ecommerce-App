import 'dart:async';
import 'package:ecommerce/signs_pages/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  final _formfield = GlobalKey<FormState>();

  bool? ischecked = false;
 int _minutesRemaining = 0;
  int _secondsRemaining = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_minutesRemaining == 0 && _secondsRemaining == 0) {
          timer.cancel();
          // Timer has reached 0, perform any action you want here
          print('Timer has reached 0!');
        } else {
          setState(() {
            if (_secondsRemaining == 0) {
              _minutesRemaining--;
              _secondsRemaining = 59;
            } else {
              _secondsRemaining--;
            }
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
   
    String minutesStr = _minutesRemaining.toString().padLeft(2, '0');
    String secondsStr = _secondsRemaining.toString().padLeft(2, '0');
   
    return Scaffold(
      appBar: AppBar(
   backgroundColor:const Color(0xffffffff),
    iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        child: Form(
          key: _formfield,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "OTP Verification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 6,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Text(
                    "We sent your code to you",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.5, color: Colors.grey[700]),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                    "This code will expired in  ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.5, color: Colors.grey[700]),
                  ),
                
                Text("$minutesStr:$secondsStr",style: const TextStyle(fontSize: 15.5,color: Color(0xffff7643),fontWeight: FontWeight.bold),)
                    ],
                  )
                  
                ],
              ),
            
              Container(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 68,
                    width: 64,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0, 
                      ),
                      borderRadius: BorderRadius.circular(
                          8.0), 
                    ),
                    child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin1) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: const InputDecoration(
                            border: InputBorder
                                .none, // Hide the border of the SizedBox
                          ),
                        )),
                  ),

                  Container(
                      height: 68,
                    width: 64,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors
                            .black,
                        width: 1.0, 
                      ),
                      borderRadius: BorderRadius.circular(
                          8.0), 
                    ),
                    child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin2) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                            decoration: const InputDecoration(
                          border: InputBorder.none, // Hide the border of the SizedBox
                        ),
                        )),
                  ),
                  Container(
                      height: 68,
                    width: 64,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors
                            .black,
                        width: 1.0, 
                      ),
                      borderRadius: BorderRadius.circular(
                          8.0), 
                    ),
                    child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin3) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                            decoration: const InputDecoration(
                          border: InputBorder.none, // Hide the border of the SizedBox
                        ),
                        )),
                  ),
                  Container(
                      height: 68,
                    width: 64,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors
                            .black,
                        width: 1.0, 
                      ),
                      borderRadius: BorderRadius.circular(
                          8.0), 
                    ),
                    child: SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin4) {},
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: Theme.of(context).textTheme.titleLarge,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                            decoration: const InputDecoration(
                          border: InputBorder.none, // Hide the border of the SizedBox
                        ),
                        )),
                  )
                ],
              ),
              Container(
                height: 120,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                height: 60,
                child: InkWell(
                  onTap: () {
                    if (_formfield.currentState!.validate()) {
                      print("Success");

                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => const SignIn()));
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
                height: 50,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey[600]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
    @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }
}
