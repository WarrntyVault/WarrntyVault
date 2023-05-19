import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:warranty/componats/_BottomNavBarState.dart';
import 'package:warranty/pages/getStarted_page.dart';
import 'package:warranty/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  ////// Firebase Register User to database
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register(
      String FirstName,
      String LastName,
      String Email,
      ) async {
    CollectionReference Users  = FirebaseFirestore.instance.collection("Users");
    Users.add({
      'FirstName': FirstName,
      'LastName': LastName,
      'Email': Email,
    });

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBar()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        _showErrorDialog('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        _showErrorDialog('The account already exists for that email.');
      } else if (e.code == 'invalid-email') {
        _showErrorDialog('The email address is not valid.');
      } else {
        _showErrorDialog('An error occurred while registering. Please try again later.');
      }
    } catch (e) {
      print(e);
      _showErrorDialog('An error occurred while registering. Please try again later.');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

///////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children:[ Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DisplayRegisterImage(),

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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FirstNameInput(),
                          LastNameInput(),
                        ],
                      ),

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



                      SignUpBtn(),

                      const SizedBox(
                        height: 5,
                      ),

                      HaveAccount(context),
                    ],
                  ),
                )



              ],
            ),
          ]
          ),
        ),

      ),
    );
  }



  // Components of Register Page


  Row HaveAccount(BuildContext context) {
  return Row(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoginPage()));
                        },
                      ),
                    ],
                  );
}

SizedBox SignUpBtn() {
  return SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLoading = true;
                          _register(
                            _firstNameController.text,
                            _lastNameController.text,
                            _emailController.text,
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5B42D1),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("SIGN UP", style: TextStyle(fontSize: 25 , ),),
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

Container LastNameInput() {
  return Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        width: 200,
                        child: TextFormField(
                          controller: _lastNameController,
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your last name';
                            }
                            return null;
                          },
                        ),

                      );
}

Container FirstNameInput() {
  return Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        width: 200,
                        child: TextFormField(
                          controller: _firstNameController,
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your last name';
                            }
                            return null;
                          },

                        ),
                      );
}


SizedBox DisplayRegisterImage() {
  return SizedBox(
              height: 200,
              child: Image.asset(
                'lib/images/img.png', // replace with your image path
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,// adjust image fit to container,
              ),
            );
}
}



