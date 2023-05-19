import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:warranty/pages/getStarted_page.dart';
import 'package:warranty/pages/register_page.dart';

import '../componats/_BottomNavBarState.dart';


class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
      print('User ID: ${userCredential.user!.uid}');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('There is no Email with '+ _emailController.text.trim()),
            content: const Text('Please enter an exsiting Email.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } else if (e.code == 'wrong-password') {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Wrong Password'),
            content: const Text('Please enter the correct password.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              DisplayLoginImage(),

              const SizedBox(
                height: 50,
              ),

              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    const Text("Let's sign you in.",
                      style: TextStyle(
                        fontSize: 20 ,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5B42CF),
                      ),
                      textAlign: TextAlign.center,

                    ),
                    const Text("Welcome Back.",
                      style: TextStyle(
                        fontSize: 20 ,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff5B42CF),
                      ),
                      textAlign: TextAlign.center,

                    ),

                    const Text("You've been missed!",
                      style: TextStyle(
                        fontSize: 20 ,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff5B42CF),
                      ),
                      textAlign: TextAlign.center,

                    ),

                    const SizedBox(
                      height: 50,
                    ),


                    EmailInput(),
                    const SizedBox(
                      height: 20,
                    ),
                    PasswordInput(),
                    const SizedBox(
                      height: 50,
                    ),

                    const Text("Forget Password?",
                      style: TextStyle(
                        fontSize: 15 ,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff5B42CF),
                      ),
                      textAlign: TextAlign.right,

                    ),
                    const SizedBox(
                      height: 5,
                    ),

                    SignBtn(),

                    const SizedBox(
                      height: 5,
                    ),

                    DontHaveAccount(context),
                  ],
                ),
              )



            ],
          ),
        ]
        ),

      ),
    );
  }




  // Components of Login Page


  Row DontHaveAccount(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    const Text("Don't have an account?",
                      style: TextStyle(
                        fontSize: 15 ,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.right,

                    ),
                    const SizedBox(
                      width: 5,
                    ),

                     InkWell(
                       child: const Text("Register",
                        style: TextStyle(
                          fontSize: 15 ,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff5B42CF),
                        ),
                        textAlign: TextAlign.right,

                    ),
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterPage()));
                       },
                     ),
                  ],
                );
  }

  SizedBox SignBtn() {
    return SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      _signInWithEmailAndPassword();


                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5B42D1),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("SIGN IN", style: TextStyle(fontSize: 25 , ),),
                  ),
                );
  }

  Container PasswordInput() {
    return Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                  child: TextField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.purple),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.purple),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      border: InputBorder.none,
                      hintText: 'Password',

                    ),
                  ),
                );
  }

  Container EmailInput() {
    return Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.purple),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.purple),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                );
  }

  SizedBox DisplayLoginImage() {
    return SizedBox(
            height: 250,
            child: Image.asset(
              'lib/images/img.png', // replace with your image path
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,// adjust image fit to container,
            ),
          );
  }
}




