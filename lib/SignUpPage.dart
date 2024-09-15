import 'package:flutter/material.dart';
import 'package:room_finder/widgets/BottomNavigationBarMain.dart';
import 'package:room_finder/widgets/SignUpBg.dart';
import 'package:room_finder/widgets/SignUpTopBg.dart';

import 'MainHomePage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Stack(
          children: [
            const SignUpBg(
              // Signup screen
              isLoginScreen: false),
            const SignUpTopBg(),
            Positioned(
              top: 200,
              left: 10,
              right: 10,
              child: Container(
                width: 400,
                height: 400,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color : Colors.black12,
                      blurRadius: 4,
                      offset: Offset(4,8),
                    ),],
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),

                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Create an Account", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              suffix: Icon(Icons.check_circle,color: Colors.green,),
                              labelText: "Full Name",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),

                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              suffix: Icon(Icons.check_circle,color: Colors.green,),
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),

                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                              labelText: "Password",
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                              labelText: "Confirm Password",
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                            ),
                          ),
                        ],
                      )),
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigationBarMain()),);
                    },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical:12 ,horizontal:25 ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text('Create Account',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                        )),
                  ],
                ),
              ),
            ),
            ]
        )
    );
  }
}
