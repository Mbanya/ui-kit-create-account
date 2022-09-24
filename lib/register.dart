import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          leading: const Icon(
            Icons.cancel,
            color: Colors.black,
          ),
          elevation: 0.0,
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Later',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      fontFamily: GoogleFonts.inter().fontFamily),
                ))
          ]),
      body: SafeArea(
        minimum: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Create Account Title
            Text(
              'Create Account',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //email address
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    scrollPadding: const EdgeInsets.all(10.0),
                    decoration: InputDecoration(
                        focusColor: Colors.white54,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 1, color: Colors.black26)),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  //password
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      focusColor: Colors.white54,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              width: 1, color: Colors.black26)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white70),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // Submit Button

                  Container(
                    width: 500,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.amber.shade300,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.amber.shade300),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Create an Account',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 250,
                    height: 40,
                    child: MaterialButton(
                        elevation: 1.0,
                        onPressed: () {},
                        child: Text(
                          'I already have an account',
                          style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: Colors.black38,
                          ),
                        )),
                  ),

                  const SizedBox(height: 40),

                  const Divider(),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 500,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OutlinedButton.icon(
                          autofocus: true,
                          icon: const FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.black,
                          ),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.amber.shade300),
                                borderRadius: BorderRadius.circular(10),
                              )),
                          label: const Text(
                            textAlign: TextAlign.right,
                            'Continue with Google',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 500,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OutlinedButton.icon(
                          icon: const FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.black,
                          ),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.amber.shade300),
                                borderRadius: BorderRadius.circular(10),
                              )),
                          label: const Text(
                            textAlign: TextAlign.left,
                            'Continue with Facebook',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 500,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OutlinedButton.icon(
                          icon: const FaIcon(
                            FontAwesomeIcons.apple,
                            color: Colors.black,
                          ),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.amber.shade300),
                                borderRadius: BorderRadius.circular(10),
                              )),
                          label: const Text(
                            'Continue with Apple',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
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
