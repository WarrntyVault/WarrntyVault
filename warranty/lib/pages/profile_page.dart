import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                Column(
                  children: const [
                    Icon(
                      Icons.person_rounded,
                      size: 80,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Username"),
                  ],
                ),
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
                    SizedBox(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
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
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(onPressed: () {}, child: const Text("Log Out",style: TextStyle(color: Colors.black)))
              ],
            ),
          )),
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