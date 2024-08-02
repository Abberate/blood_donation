import 'package:flutter/material.dart';
import 'package:blood_donation/constraints.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _nomPrenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Bloodlogo.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nomPrenomController,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.perm_identity),
                          iconColor: kPrimaryRougeA,
                          labelText: 'Nom et Prénom',
                          labelStyle: kTextChampSaisie,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _telephoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.smartphone),
                          iconColor: kPrimaryRougeA,
                          labelText: 'Numéro de téléphone',
                          labelStyle: kTextChampSaisie,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.mail),
                          iconColor: kPrimaryRougeA,
                          labelText: 'E-mail',
                          labelStyle: kTextChampSaisie,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        // Pour masquer le texte du mot de passe
                        decoration: InputDecoration(
                          icon: const Icon(Icons.safety_check_outlined),
                          iconColor: kPrimaryRougeA,
                          labelText: 'Mot de passe',
                          labelStyle: kTextChampSaisie,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController2,
                        obscureText: true,
                        // Pour masquer le texte du mot de passe
                        decoration: InputDecoration(
                          icon: const Icon(Icons.safety_check_outlined),
                          iconColor: kPrimaryRougeA,
                          labelText: 'Confirmation mot de passe',
                          labelStyle: kTextChampSaisie,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(height: 15),
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
                            "S'inscrire ",
                            style: kBTN,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Se connecter avec :',
                        style: kTextChampSaisie,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Fonctionnalité du bouton désactivée
                            },
                            icon: Image.asset(
                              'assets/images/google.png',
                              height: 40,
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
      ),
    );
  }
}
