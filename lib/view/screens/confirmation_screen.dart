import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vagrancy_beggars/view/screens/nav_bar_screen.dart';
import 'package:vagrancy_beggars/view/screens/settings_logout.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQuery.height * 0.06),
            Container(
              height: mediaQuery.height * 0.1,
              width: mediaQuery.width,
              decoration: BoxDecoration(color: Color(0xff22C55E)),
              child: Center(
                child: Text(
                  'Profile Created',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.03),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mediaQuery.width * 0.03,
                vertical: mediaQuery.height * 0.02,
              ),
              child: Column(
                children: [
                  SizedBox(height: mediaQuery.height * 0.04),
                  Container(
                    height: mediaQuery.height * 0.35,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: mediaQuery.height * 0.06),

                          Text('Usama Kamal', style: TextStyle(fontSize: 22)),
                          Text('Age: 42', style: TextStyle(fontSize: 18)),
                          SizedBox(height: mediaQuery.height * 0.02),

                          Row(
                            children: [
                              Icon(
                                Icons.perm_identity,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '42301-23457833-1',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.02),

                          Row(
                            children: [
                              Icon(Icons.phone, color: Colors.blueAccent),
                              SizedBox(width: 5),
                              Text(
                                '(212)123-234)',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.02),

                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.blueAccent),
                              SizedBox(width: 5),
                              Text(
                                'Liberty Market, Saddar Bazaar, Lahore',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.03),

                  Container(
                    height: mediaQuery.height * 0.23,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: mediaQuery.height * 0.02),

                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'About',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: mediaQuery.height * 0.02),

                          Text(
                            'Page layouts look better with something in each section. Web page designers, content writers,editorials, and filler before the final written content',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.03),

                  Container(
                    height: mediaQuery.height * 0.23,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: mediaQuery.height * 0.02),

                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Skills',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: mediaQuery.height * 0.01),
                          Row(
                            children: [
                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.22,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Resilience')),
                              ),
                              SizedBox(width: mediaQuery.width * 0.02),
                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.25,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Adaptability')),
                              ),
                              SizedBox(width: mediaQuery.width * 0.02),

                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.27,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Street Smarts')),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.01),
                          Row(
                            children: [
                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.22,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Negotiation')),
                              ),
                              SizedBox(width: mediaQuery.width * 0.02),
                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.25,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('StoreyTelling')),
                              ),
                              SizedBox(width: mediaQuery.width * 0.02),

                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.27,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Patience')),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.01),
                          Row(
                            children: [
                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.22,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Endurance')),
                              ),
                              SizedBox(width: mediaQuery.width * 0.02),
                              Container(
                                height: mediaQuery.height * 0.03,
                                width: mediaQuery.width * 0.25,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Creativity')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: mediaQuery.height * 0.05),

                  GestureDetector(
                    onTap: () {
                      Get.to(() => SettingsLogout());
                    },
                    child: Container(
                      height: mediaQuery.height * 0.07,
                      width: mediaQuery.width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color(0xff140D44), width: 2),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Color(0xff140D44),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: mediaQuery.height * 0.02),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => MainNavScreen());
                    },
                    child: Container(
                      height: mediaQuery.height * 0.07,
                      width: mediaQuery.width,
                      decoration: BoxDecoration(
                        color: Color(0xff140D44),

                        borderRadius: BorderRadius.circular(30),
                        //border: Border.all(color: Color(0xff140D44), width: 2),
                      ),
                      child: Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
          ],
        ),
      ),
    );
  }
}
