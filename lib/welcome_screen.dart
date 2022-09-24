import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // welcome image

            SizedBox(
              child: Image.asset(
                'assets/welcome.png',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),
            //welcome text

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hey! Welcome',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "We deliver on-demand-organic fresh fruits directly from your nearby farms",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontStyle: GoogleFonts.inter().fontStyle,
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),
            // welcome buttons

            Container(
              height: 200,
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 40,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'register');
                      },
                      elevation: 3.0,
                      minWidth: MediaQuery.of(context).size.width * 0.15,
                      color: const Color.fromARGB(255, 255, 198, 40),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 250,
                    height: 40,
                    child: MaterialButton(
                        color: Colors.white,
                        elevation: 1.0,
                        onPressed: () {},
                        child: Text(
                          'I already have an account',
                          style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: Colors.black,
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
