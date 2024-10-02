import 'package:flutter/material.dart';
import 'package:room_finder/ResetPasswordPage.dart';
import 'package:room_finder/widgets/BottomNavigationBarMain.dart';
import 'package:room_finder/widgets/Cards/SignUpBg.dart';
import 'package:room_finder/widgets/SignUpTopBg.dart';
import 'DashboardScreens/MainHomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SignUpBg(
            //Login screen
            isLoginScreen: true,),
          const SignUpTopBg(),
          Positioned(
            left: 10,
            right: 10,
            top: 230,
            child: Container(
                width: 400,
                height: 380,
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
                      child: Text("Sign In to Continue", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(child: Column(
                        children: <Widget>[
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
                        ],
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigationBarMain()));
                    },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical:12 ,horizontal:25 ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      )),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: InkWell(onTap : (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordPage()),);
                      },
                        child: const Text("Reset Password?",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}