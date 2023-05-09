import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:warranty/pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {

    void _logout() async {
      await FirebaseAuth.instance.signOut();
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
              (route) => false);
    }

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                const ProfileTitle(),
                const SizedBox(
                  height: 20,
                ),
                DisplayName(),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Divider(color: Colors.black, thickness: 3,),
                    const SizedBox(
                      height: 20,
                    ),
                    ManageProfileBtn(),
                    const SizedBox(
                      height: 20,
                    ),
                    ChangePasswordBtn(),
                    const SizedBox(
                      height: 20,
                    ),
                    DeleteAccountBtn()
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () => _logout(),
                    child: const Text("Log Out",
                        style: TextStyle(
                            color: Colors.black)))
              ],
            ),
          )),
    );
  }


  // Componats of Profile Page

  SizedBox DeleteAccountBtn() {
    return SizedBox(
                    width: 300,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffffffFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(
                            color: Color(0xff5B42CF),
                          ),
                        ),
                      ),
                      child: const Text("Delete Account",style: TextStyle(color: Colors.black)),
                    ),
                  );
  }

  SizedBox ChangePasswordBtn() {
    return SizedBox(
                    width: 300,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffffffFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(
                            color: Color(0xff5B42CF),
                          ),
                        ),
                      ),
                      child: const Text("Change Password",style: TextStyle(color: Colors.black),),
                    ),
                  );
  }

  SizedBox ManageProfileBtn() {
    return SizedBox(
                    width: 300,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE2DCFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text("Manage Profile", style: TextStyle(color: Colors.black),),
                    ),
                  );
  }

  Column DisplayName() {
    return Column(
                children: const [
                  Icon(
                    Icons.person_rounded,
                    size: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Name'),
                ],
              );
  }
}

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Profile",textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
      ],
    );
  }
}