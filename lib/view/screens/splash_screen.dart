import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vagrancy_beggars/view/screens/welcome_back_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

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
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: mediaQuery.height * 0.2),
              // Shield icon inside red circle
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.redAccent, width: 3),
                ),
                child: const Center(
                  child: Icon(
                    Icons.verified_user,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // App title
              const Text(
                "Punjab Vagrancy Portal",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Subtitle
              const Text(
                "For Safer Streets in Lahore",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              SizedBox(height: mediaQuery.height * 0.3),

              // Get Started button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => WelcomeBackScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffED1C24),
                      //  backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "GET STARTED",
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
            ],
          ),
        ),
      ),
    );
  }
}
