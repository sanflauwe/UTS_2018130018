import 'package:app1/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 55, 47),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //big logo
              Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                  right: 100.0,
                  top: 120,
                  bottom: 20,
                ),
                child: Image.asset("assets/images/tamagoyaki.png"),
              ),

              //Welcome to Ara  Shop
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  'Welcome to Ara House',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Form Email
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              ),

              //Form password
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  bottom: 30.0,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
              ),

              //Login button
              SizedBox(
                width: 330,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[300])),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
