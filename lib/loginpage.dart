import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:myapp/Onboarding.dart';
import 'package:myapp/Onboarding1.dart';
import 'package:myapp/Onboarding2.dart';
import 'package:myapp/Onboarding3.dart';
import 'package:myapp/Onboarding4.dart';
import 'package:myapp/Onboarding5.dart';
import 'package:myapp/home.dart';
import 'package:myapp/login.dart';
import 'package:myapp/login1.dart';
import 'package:myapp/map_actifation.dart';
import 'package:myapp/report.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: Svg('images/Gojek Logo.svg')),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Onboarding(),
                      Onboarding1(),
                      Onboarding2(),
                      Onboarding3(),
                      Onboarding4(),
                      Onboarding5(),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                        height: 80), // Add spacing between text and buttons
                    IndicatorWidget(
                        currentPage:
                            _currentPage), // Pass currentPage to IndicatorWidget
                    const SizedBox(
                        height: 16), // Add spacing after the indicators
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 32, 117, 35),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MapActivation()),
                        );
                      },
                      child: const Text(
                        'Masuk',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 32, 117, 35),
                        minimumSize: const Size(double.infinity, 50),
                        side: BorderSide(
                            color: const Color.fromARGB(255, 32, 117, 35)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        // Handle sign up
                      },
                      child: const Text(
                        'Belum ada akun?, Daftar dulu',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                        height: 16), // Add spacing between buttons and text
                    const Text(
                      'Dengan masuk atau mendaftar, kamu menyetujui ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromARGB(255, 49, 48, 48)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Ketentuan layanan',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                        Text(
                          ' dan ',
                          style:
                              TextStyle(color: Color.fromARGB(255, 49, 48, 48)),
                        ),
                        Text(
                          'Kebijakan privasi.',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class IndicatorWidget extends StatelessWidget {
  final int currentPage;

  IndicatorWidget({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return DotIndicator(isActive: index == currentPage);
      }),
    );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;

  DotIndicator({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color.fromARGB(255, 32, 117, 35) : Colors.grey,
      ),
    );
  }
}
