import 'package:design_system/design_system.dart';
import 'package:example/login.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  int currentIndex = 0;

  List<String> titles = [
    "Films, séries TV, documentaires en illimité",
    "Tout les contenus téléchargeable & accessible hors ligne",
    "OUTBUSTER, c’est simple comme un clic",
    "Disponible partout, tout le temps.",
  ];

  List<String> subtitles = [
    "Laissez vous surprendre ! Annulable à tout moment.",
    "C’est où vous voulez, quand vous voulez.",
    "Oubliez les contrats compliqués, l’abonnement est annulable à tout moments.",
    "OUTBUSTER sur votre smartphone, tablette, ordinateur, TV …",
  ];

  change() {
    if (currentIndex == 3) {
      return Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const LoginView();
          },
        ),
      );
    }
    currentIndex = ++currentIndex;
    // _pageController.jumpToPage(currentIndex)
    _pageController.nextPage(
      duration: const Duration(milliseconds: 700),
      curve: Curves.fastOutSlowIn,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView.builder(
                controller: _pageController,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Image.asset(
                    width: MediaQuery.of(context).size.width,
                    "assets/landing-$index.png",
                    fit: BoxFit.fitWidth,
                  );
                },
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(.7),
                      // Colors.transparent,
                      Colors.transparent,
                      Colors.black,
                      Colors.black,
                      Colors.black,
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/bolt.png"),
                            Gap.s10,
                            const AppText.body(
                              "ESSAI GRATUIT",
                              color: AppColor.primary,
                              fontWeight: FontWeight.w700,
                            ),
                            const Spacer(),
                            const AppText.body(
                              "S’identifier",
                              color: AppColor.primary,
                            ),
                          ],
                        ),
                        const Spacer(),
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 400),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                      begin: const Offset(0.0, -0.7),
                                      end: const Offset(0.0, 0.0))
                                  .animate(animation),
                              child: FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            );
                          },
                          child: AppText.h3(
                            titles[currentIndex],
                            key: ValueKey<String>(titles[currentIndex]),
                            centered: true,
                          ),
                        ),
                        Gap.s24,
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 600),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                      begin: const Offset(-0.7, 0.0),
                                      end: const Offset(0.0, 0.0))
                                  .animate(animation),
                              child: FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            );
                          },
                          child: AppText.h6(
                            subtitles[currentIndex],
                            key: ValueKey<String>(subtitles[currentIndex]),
                            centered: true,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Gap.s24,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: ClipOval(
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  height: 12,
                                  width: 12,
                                  color: index == currentIndex
                                      ? Colors.white
                                      : Colors.grey.shade600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          child: AppButton.expanded(
                            text: "COMMENCER",
                            onPressed: () {
                              change();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
