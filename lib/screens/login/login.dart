import 'package:flutter/material.dart';
import 'package:blood_donation/constraints.dart';
import 'sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/images/Bloodlogo.png",
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.mail),
                        iconColor: kPrimaryRougeA,
                        labelText: 'Nom d\'utilisateur ou e-mail',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.safety_check_outlined),
                        iconColor: kPrimaryRougeA,
                        labelText: 'Mot de passe',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: kPrimaryRougeA,
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryRougeB.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      width: 250,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Se connecter",
                          style: kBTN,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Se connecter avec :',
                      style: kTextChampSaisie,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/google.png',
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Pas encore inscrit ?',
                            style: kTextChampSaisie,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()),
                            );
                          },
                          child: Text(
                            'S\'inscrire',
                            style: kTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
