import 'package:flutter/material.dart';
import 'package:warranty/pages/getStarted_page.dart';
import 'package:warranty/pages/register_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            SizedBox(
              height: 100,
              child: Image.asset(
                'lib/images/img.png', // replace with your image path
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,// adjust image fit to container,
              ),
            ),

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

                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    child: TextField(
                      controller: null,
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
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    child: TextField(
                      controller: null,
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
                  ),
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

                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5B42D1),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("SIGN IN", style: TextStyle(fontSize: 25 , ),),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
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
                  ),
                ],
              ),
            )



          ],
        ),

      ),
    );
  }
}