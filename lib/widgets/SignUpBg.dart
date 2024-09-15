import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/academicons.dart';
import 'package:room_finder/LoginPage.dart';
import 'package:room_finder/SignUpPage.dart';



class SignUpBg extends StatelessWidget {
  final bool isLoginScreen;

  const SignUpBg({super.key, required this.isLoginScreen});


  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity ,
      //Decoration
      decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.white24,Colors.white],
          end: AlignmentDirectional.center,begin: AlignmentDirectional.bottomEnd)),


      child: Stack(
        children: <Widget>[

          Positioned(
            top: 640,
              left: 10,
              right: 10,
              child: Container(
                  width: 400,
                    child: const Center(
                      child: Text('Or Sign Up with',style: TextStyle(fontSize: 18),),
              )),),

          Positioned(
            top: 700,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)
              ),
              width: 350,
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,
                    color: Colors.indigo,
                    size: 25,),
                  Text("Continue with Facebook",style: TextStyle(fontSize: 18,),),
                ],
              ),
            ),
          ),

          Positioned(
            top: 760,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)
              ),
              width: 350,
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Iconify(Academicons.google_scholar_square,size: 25,),
                  Text("Continue with Google",style: TextStyle(fontSize: 18,)),
                ],
              ),
            ),
          ),

          Positioned(
            top: 835,
            left: 10,
            right: 10,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      isLoginScreen ? 'New Member? ': "Have an account? ",
                      style: const TextStyle(fontSize: 16,)),
                  InkWell(onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => isLoginScreen ? const SignUpPage() : const LoginPage(),));
                    },
                    child: Text(
                      isLoginScreen ? "Sign Up Here ": "Sign In Here",
                      style: const TextStyle(fontSize: 16,color: Colors.blueAccent),),),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}

class LoginScreen {
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
        child: Text('Sign Up Here'),
    ),
    );
  }
}

class SignupScreen {
   build(BuildContext context) {
    return const Scaffold(
        body: Center(
        child: Text('Sign In Here'),
    ),
    );
  }
}
