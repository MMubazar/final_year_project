import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Color(0xffffbf08),
              height: 50,
            ),
            Image.asset('assets/img2.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  hintText: "Email",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  hintText: "Password",
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Sign In'))
          ],
        ),
      ),
    );
  }
}
