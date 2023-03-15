import 'package:final_year_project/sign%20in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffffbf08),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/img1.png'),
            Positioned(
                bottom: 80,
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffff5f30),
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
