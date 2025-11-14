import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vagrancy_beggars/view/screens/nav_bar_screen.dart';
import 'package:vagrancy_beggars/view/widgets/custom_field.dart';

class WelcomeBackScreen extends StatelessWidget {
  WelcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff140D44),
              Color.fromARGB(255, 162, 67, 70),
              // Color(0xFF0D0033), // deep navy top
              // Color(0xFF360026), // dark purple bottom
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mediaQuery.width * 0.02,
                vertical: mediaQuery.height * 0.02,
              ),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: mediaQuery.height * 0.1),

                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Please Sign in to Continue',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.05),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'LOGIN AS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  CustomField(
                    text: 'Circle Office',
                    isSuffixIcon: true,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                  ),
                  SizedBox(height: mediaQuery.height * 0.02),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'USERNAME',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  CustomField(
                    text: 'Enter your username',
                    isPrefixIcon: true,
                    prefixIcon: Icon(Icons.person),
                  ),
                  SizedBox(height: mediaQuery.height * 0.02),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'PASSWORD',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  CustomField(
                    text: 'Enter your password',
                    isPrefixIcon: true,
                    isPasswordField: true,
                    isObscured: true,
                    isSuffixIcon: true,
                    suffixIcon: Icon(Icons.visibility),
                    prefixIcon: Icon(Icons.lock),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},

                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Color(0xffED1C24)),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.06),
                  // Get Started button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => MainNavScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffED1C24),
                          //  backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Dots indicator (optional, static)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Color(0xffED1C24),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          // color: Colors.white24,
                          color: Color(0xffED1C24),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: mediaQuery.height * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
