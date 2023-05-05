import 'package:flutter/material.dart';
import 'package:warranty/pages/getStarted_page.dart';
import 'package:warranty/pages/login_page.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                  const Text("Sign up",
                    style: TextStyle(
                      fontSize: 20 ,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5B42CF),
                    ),
                    textAlign: TextAlign.center,

                  ),
                  const Text("After registering, start your tracking\nwarranty progress.",
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

                  fullNameInput(),
                  const SizedBox(
                    height: 20,
                  ),

                  EmailInput(),
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordInput(),
                  const SizedBox(
                    height: 50,
                  ),



                  RegisterButton(),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text("have an account?",
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
                        child: const Text("Login",
                          style: TextStyle(
                            fontSize: 15 ,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff5B42CF),
                          ),
                          textAlign: TextAlign.right,

                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
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

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          hintText: 'Email',
        ),
      ),
    );
  }
}

class fullNameInput extends StatelessWidget {
  const fullNameInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          width: 200,
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
              hintText: 'First Name',
            ),
          ),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          width: 200,
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
              hintText: 'Last Name',
            ),
          ),
        ),
      ],
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff5B42D1),
          shape: const StadiumBorder(),
        ),
        child: const Text("SIGN UP", style: TextStyle(fontSize: 25 , ),),
      ),
    );
  }
}
