import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Material(
                elevation: 10,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 300.0)),
                child: Container(
                  height: 350.0,
                  decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 48, 91, 38),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 300.0)),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Color.fromARGB(179, 194, 194, 194),
                          spreadRadius: 5)
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Image.asset(
                      "images/Logo.png",
                      height: 60,
                    ),
                  ),
                ),
              ),
            ]),
        SizedBox(
          height: 100,
        ),
        Text(
          "Welcome To Family",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text("A platform built for a new way of working",
            style: GoogleFonts.roboto(fontSize: 19)),
        Spacer(),
        Center(
          child: SizedBox(
            width: 200,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Get Started for Free"),
                  Icon(Icons.arrow_right)
                ],
              ),
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
