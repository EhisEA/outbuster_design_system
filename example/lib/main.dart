import 'dart:developer';

import 'package:design_system/design_system.dart';
import 'package:example/home_view.dart';
import 'package:example/login.dart';
import 'package:example/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        primaryColor: AppColor.primary,
        brightness: Brightness.dark,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.black,
        ),
        primarySwatch: AppColor.primary,
      ),
      home:
          OnboardingView(), //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0e0d15),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 20),
          TwoText(
            firstText: "Didn’t receive code? ",
            secondText: "Resend",
            onFirstTap: () {
              log("hello");
            },
            onSecondTap: () {
              log("hello");
            },
          ),
          AppText.h4("Films, séries TV, documentaires en illimité"),
          AppText.body("Laissez vous surprendre !Annulable à tout moment."),
          const SizedBox(height: 20),
          const AppTextField.title(
            title: "Password",
            maxLines: null,
            constraints: BoxConstraints(maxHeight: 100),
          ),
          const SizedBox(height: 20),
          const AppTextField(
            maxLength: 80,
            maxLines: null,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  backgroundColor: AppColor.grey.shade50,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.timer_sharp),
                  ),
                  hintStyle:
                      AppTextStyle.body.copyWith(color: AppColor.grey.shade400),
                  hintText: "8:00 AM",
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: AppTextField(
                  backgroundColor: AppColor.grey.shade50,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.timer_sharp),
                  ),
                  hintStyle:
                      AppTextStyle.body.copyWith(color: AppColor.grey.shade400),
                  hintText: "6:00 PM",
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          AppTextField(
            backgroundColor: AppColor.grey.shade50,
            prefixIcon: const Icon(Icons.search),
            hintText: "Search questions, problems and solutions",
          ),
          const SizedBox(height: 20),
          AppTextField(hintText: "Enter Location"),
          const SizedBox(height: 20),
          AppTextField(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Container(
              margin: const EdgeInsets.only(right: 10),
              color: Colors.amber,
              width: 70,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Center(child: AppText.body("NGN")),
            ),
            backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(height: 20),
          AppTextField(
            hintText: "Enter Rent Amount",
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Container(
              margin: const EdgeInsets.only(
                  right: 10, top: .5, bottom: .5, left: .5),
              decoration: BoxDecoration(
                  color: AppColor.grey.shade50,
                  borderRadius: BorderRadius.circular(3)),
              width: 70,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: AppText.body2(
                  "NGN",
                  color: AppColor.grey.shade500,
                ),
              ),
            ),
            // backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(height: 20),
          const AppTextField(isPassword: true),
          const SizedBox(height: 20),
          AppButton(
            enabled: false,
            text: "Happy",
            onPressed: () {},
          ),
          AppButton(
            text: "Happy",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          AppButton.expanded(
            text: "Happy",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          AppButton.expanded(
            enabled: false,
            text: "Happy",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          AppButton.text(
            onPressed: () {},
            icon: const Icon(Icons.add_circle),
            text: "Happy",
            foregroundColor: AppColor.red,
          ),
          AppButton(
            icon: const Icon(Icons.add_circle),
            text: "Happy",
            onPressed: () {},
          ),
          AppButton.expanded(
            icon: const Icon(Icons.add_circle),
            onPressed: () {},
            text: "Happy",
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AppButton.text(
                  underlineText: true,
                  onPressed: () {},
                  text: "Happy",
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: AppButton(
                  enabled: false,
                  text: "Happy",
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 30),
              Expanded(
                  child: AppButton(
                foregroundColor: AppColor.primary,
                backgroundColor: AppColor.grey.shade50,
                onPressed: () {},
                text: "Happy",
              )),
              const SizedBox(width: 30),
              Expanded(
                  child: AppButton(
                text: "Happy",
                onPressed: () {},
              )),
              const SizedBox(width: 30),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AppButton.text(
                  underlineText: true,
                  onPressed: () {},
                  foregroundColor: AppColor.grey.shade700,
                  text: "Happy",
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                  child: AppButton(
                onPressed: () {},
                enabled: false,
                text: "Happy",
              )),
            ],
          ),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
