import 'package:design_system/design_system.dart';
import 'package:example/home_view.dart';
import 'package:example/widgets/logo.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Logo(),
              ),
              const Gap.both(90),
              const AppTextField(hintText: "E-mail ou numéro de téléphone"),
              Gap.s20,
              const AppTextField(hintText: "Mot de passe"),
              Gap.s10,
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: AppText.caption("Mot de passe oublié ?"),
                ),
              ),
              Gap.s20,
              AppButton.expanded(
                text: "S’IDENTIFIER",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeView();
                      },
                    ),
                  );
                },
              ),
              Gap.s32,
              const AppText.body(
                "Besoin d’aide ?",
                fontSize: 20,
              ),
              const AppText.body(
                "Première visite sur OUTBUSTER ?",
                fontSize: 18,
              ),
              AppButton.text(
                text: "Inscrivez-vous",
                fontWeight: FontWeight.w400,
                fontSize: 18,
                onPressed: () {},
                foregroundColor: Theme.of(context).textTheme.bodyText1?.color,
                underlineText: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
