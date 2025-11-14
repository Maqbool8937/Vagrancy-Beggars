import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vagrancy_beggars/controllers/getxController/theme%20_controller.dart';

class MatchFoundScreen extends StatefulWidget {
  const MatchFoundScreen({super.key});

  @override
  State<MatchFoundScreen> createState() => _MatchFoundScreenState();
}

class _MatchFoundScreenState extends State<MatchFoundScreen> {
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    final mediaQuery = MediaQuery.of(context).size;

    return Obx(() {
      final isDark = themeController.isDark.value;
      final bgColor = Theme.of(context).scaffoldBackgroundColor;
      final textColor = Theme.of(context).textTheme.bodyMedium!.color;
      final cardColor = Theme.of(context).cardColor;

      return Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: mediaQuery.height * 0.06),

              /// HEADER BAR
              Container(
                height: mediaQuery.height * 0.1,
                width: mediaQuery.width,
                decoration: BoxDecoration(color: const Color(0xff140D44)),
                child: Center(
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    title: const Text(
                      'Match Found',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
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

                    /// Name + Age
                    Text(
                      'Usama Kamal',
                      style: TextStyle(
                        fontSize: 22,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Age: 42',
                      style: TextStyle(
                        fontSize: 18,
                        color: textColor?.withOpacity(0.8),
                      ),
                    ),

                    SizedBox(height: mediaQuery.height * 0.05),

                    /// Personal Details Heading
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    /// FIRST INFO CARD
                    Container(
                      height: mediaQuery.height * 0.2,
                      width: mediaQuery.width,
                      decoration: BoxDecoration(
                        color: cardColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: mediaQuery.height * 0.02),

                            _infoRow(
                              icon: Icons.location_on,
                              text: 'Location Found: Lahore, Punjab',
                            ),

                            SizedBox(height: mediaQuery.height * 0.02),

                            _infoRow(
                              icon: Icons.perm_identity,
                              text: 'Identification Marks: Scar on left cheek',
                            ),

                            SizedBox(height: mediaQuery.height * 0.02),

                            _infoRow(
                              icon: Icons.alarm,
                              text: 'Last Seen: 3 days ago',
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: mediaQuery.height * 0.02),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    /// SECOND INFO CARD
                    Container(
                      height: mediaQuery.height * 0.22,
                      width: mediaQuery.width,
                      decoration: BoxDecoration(
                        color: cardColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            SizedBox(height: mediaQuery.height * 0.02),

                            _infoRow(
                              icon: Icons.location_on,
                              text:
                                  'Previously Found at: Liberty Market,\n Lahore (Jan 15), Saddar Bazar',
                            ),

                            SizedBox(height: mediaQuery.height * 0.02),

                            _infoRow(
                              icon: Icons.notes,
                              text: 'Notes: Has refused shelter twice',
                            ),

                            SizedBox(height: mediaQuery.height * 0.02),

                            _infoRow(
                              icon: Icons.category,
                              text: 'Category: Repeat Offender',
                              iconColor: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: mediaQuery.height * 0.05),

                    /// BUTTON - Mark Present Again
                    _outlinedButton(
                      text: "Mark Present Again",
                      textColor: const Color(0xff140D44),
                      borderColor: const Color(0xff140D44),
                    ),

                    SizedBox(height: mediaQuery.height * 0.02),

                    /// BUTTON - Take Action
                    _filledButton(
                      text: "Take Action (FIR/Warning)",
                      color: const Color(0xffED1C24),
                    ),

                    SizedBox(height: mediaQuery.height * 0.02),

                    /// BUTTON - Assign Shelter
                    _filledButton(
                      text: "Assign Shelter",
                      color: const Color(0xff140D44),
                    ),
                  ],
                ),
              ),

              SizedBox(height: mediaQuery.height * 0.05),
            ],
          ),
        ),
      );
    });
  }

  /// --------------------------
  /// REUSABLE WIDGETS
  /// --------------------------

  Widget _infoRow({
    required IconData icon,
    required String text,
    Color iconColor = Colors.blueAccent,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(Get.context!).textTheme.bodyMedium!.color,
            ),
          ),
        ),
      ],
    );
  }

  Widget _outlinedButton({
    required String text,
    required Color textColor,
    required Color borderColor,
  }) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _filledButton({required String text, required Color color}) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// class MatchFoundScreen extends StatefulWidget {
//   const MatchFoundScreen({super.key});

//   @override
//   State<MatchFoundScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<MatchFoundScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: mediaQuery.height * 0.06),
//             Container(
//               height: mediaQuery.height * 0.1,
//               width: mediaQuery.width,
//               decoration: BoxDecoration(color: Color(0xff140D44)),
//               child: Center(
//                 child: ListTile(
//                   leading: GestureDetector(
//                     onTap: () {
//                       Get.back();
//                     },
//                     child: Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                   title: Text(
//                     'Match Found',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: mediaQuery.height * 0.03),

//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: mediaQuery.width * 0.03,
//                 vertical: mediaQuery.height * 0.02,
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(height: mediaQuery.height * 0.04),
//                   Text('Usama Kamal', style: TextStyle(fontSize: 22)),
//                   Text('Age: 42', style: TextStyle(fontSize: 18)),
//                   SizedBox(height: mediaQuery.height * 0.05),
//                   Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Text(
//                       'Personal Details',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ),
//                   Container(
//                     height: mediaQuery.height * 0.2,
//                     width: mediaQuery.width,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.07),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SizedBox(height: mediaQuery.height * 0.02),
//                           Row(
//                             children: [
//                               Icon(Icons.location_on, color: Colors.blueAccent),
//                               SizedBox(width: 5),
//                               Text(
//                                 'Location Found: Lahore, Punjab',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: mediaQuery.height * 0.02),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.perm_identity,
//                                 color: Colors.blueAccent,
//                               ),
//                               SizedBox(width: 5),
//                               Text(
//                                 'Identification Marks: Scar on left cheek',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: mediaQuery.height * 0.02),
//                           Row(
//                             children: [
//                               Icon(Icons.alarm, color: Colors.blueAccent),
//                               SizedBox(width: 5),
//                               Text(
//                                 'Last Seen: 3 days ago',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.02),
//                   Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Text(
//                       'Personal Details',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ),
//                   Container(
//                     height: mediaQuery.height * 0.22,
//                     width: mediaQuery.width,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.07),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SizedBox(height: mediaQuery.height * 0.02),
//                           Row(
//                             children: [
//                               Icon(Icons.location_on, color: Colors.blueAccent),
//                               SizedBox(width: 5),
//                               Text(
//                                 'Previously Found at: Liberty Market,\n Lahore (Jan 15), Saddar Bazar',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: mediaQuery.height * 0.02),
//                           Row(
//                             children: [
//                               Icon(Icons.notes, color: Colors.blueAccent),
//                               SizedBox(width: 5),
//                               Text(
//                                 'Notes: Has refused shelter twice',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: mediaQuery.height * 0.02),
//                           Row(
//                             children: [
//                               Icon(Icons.category, color: Colors.red),
//                               SizedBox(width: 5),
//                               Text(
//                                 'Category: Repeat Offender',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.05),

//                   Container(
//                     height: mediaQuery.height * 0.07,
//                     width: mediaQuery.width,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.07),
//                       borderRadius: BorderRadius.circular(30),
//                       border: Border.all(color: Color(0xff140D44), width: 2),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Mark Present Again',
//                         style: TextStyle(
//                           color: Color(0xff140D44),
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.02),
//                   Container(
//                     height: mediaQuery.height * 0.07,
//                     width: mediaQuery.width,
//                     decoration: BoxDecoration(
//                       color: Color(0xffED1C24),
//                       borderRadius: BorderRadius.circular(30),
//                       //border: Border.all(color: Color(0xff140D44), width: 2),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Take Action (FIR/Warning)',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.02),
//                   Container(
//                     height: mediaQuery.height * 0.07,
//                     width: mediaQuery.width,
//                     decoration: BoxDecoration(
//                       color: Color(0xff140D44),

//                       borderRadius: BorderRadius.circular(30),
//                       //border: Border.all(color: Color(0xff140D44), width: 2),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Assign Shelter',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: mediaQuery.height * 0.05),
//           ],
//         ),
//       ),
//     );
//   }
// }
