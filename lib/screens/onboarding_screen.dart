import 'package:blood_donation/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:blood_donation/constraints.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                    onPressed: _currentPage > 0
                        ? () {
                      _controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                        : null,
                  ),
                  TextButton(
                    onPressed: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("Passer", style: kTextStyle),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: const [
                    OnboardingPage(
                      image: 'assets/images/Blood1.png',
                      title: "Donner à plusieurs",
                      description:
                      "Chaque don de sang peut sauver des vies précieuses. Soyez un héros aujourd'hui !",
                    ),
                    OnboardingPage(
                      image: 'assets/images/Blood2.png',
                      title: "Aider à la recherche",
                      description:
                      "Contribuez à des avancées médicales significatives en partageant votre sang.",
                    ),
                    OnboardingPage(
                      image: 'assets/images/Blood3.png',
                      title: "Trouver un donneur",
                      description:
                      "Besoin de sang ? Trouver un donneur compatible grace à notre Application.",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: SmoothPageIndicator(
                  controller: _controller, // PageController
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotColor: kGreyBtn,
                    activeDotColor: kPrimaryRougeA,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                  ), // your preferred effect
                  onDotClicked: (index) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
                child: GestureDetector(
                  onTap: _currentPage < 2
                      ? () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                      : () {
                    // Naviguer vers l'écran suivant après l'onboarding
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Login();
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: kPrimaryRougeA,
                      boxShadow: [
                        BoxShadow(
                          color: kPrimaryRougeB.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    width: 380,
                    height: 60,
                    child: Center(
                      child: Text(
                        _currentPage < 2 ? "Suivant" : "Commencer",
                        style: kBTN,
                      ),
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

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 400),
          const SizedBox(height: 20),
          Text(
            title,
            style: kTextTitre,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: kTextSousTitre,
          ),
        ],
      ),
    );
  }
}
