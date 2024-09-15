import 'package:flutter/material.dart';
import 'package:room_finder/LoginPage.dart';
import 'package:room_finder/widgets/SignUpTopBg.dart';


class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          width: double.infinity,
            height: double.infinity,
            color: Colors.white,
        ),
        const SignUpTopBg(),
          Positioned(
            top: 200,
            left: 10,
            right: 10,
            child: Container(
              height: 250,
              width: 350,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color : Colors.black26,
                    blurRadius: 4,
                    offset: Offset(4,8),
                  ),],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      ],
                    )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
                  },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical:12 ,horizontal:25 ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text('Reset Password',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                      )),
                ],
              ),
            ),
          ),
        ]
      ),

    );
  }
}
