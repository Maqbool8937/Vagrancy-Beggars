import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vagrancy_beggars/controllers/getxController/theme%20_controller.dart';
import 'package:vagrancy_beggars/view/screens/biometric_capture_screen.dart';
import 'package:vagrancy_beggars/view/screens/facial_scan_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final themeController = Get.find<ThemeController>();

    return Scaffold(
      body: Obx(() {
        final isDark = themeController.isDark.value;
        final bgColor = Theme.of(context).scaffoldBackgroundColor;
        final cardColor = Theme.of(context).cardColor;
        final textColor = Theme.of(context).textTheme.bodyMedium!.color;

        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: mediaQuery.height * 0.06),

              // TOP BANNER
              Container(
                height: mediaQuery.height * 0.1,
                width: mediaQuery.width,
                color: isDark ? Colors.grey.shade900 : const Color(0xff140D44),
                child: Center(
                  child: ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: const Text(
                      'Officer Portal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
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
                    // Profile Card
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: isDark ? Colors.black54 : Colors.black12,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 26,
                            backgroundColor: Color(0xFFE8E9EC),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'Dr. Usman Anwar ',
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '(IG Police)',
                                      style: TextStyle(
                                        color: textColor?.withOpacity(0.7),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'ID: 45897',
                                style: TextStyle(
                                  color: textColor?.withOpacity(0.7),
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    color: Colors.green,
                                    size: 10,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'On duty',
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: mediaQuery.height * 0.05),

                    // Action Buttons
                    _buildActionButton(
                      mediaQuery,
                      icon: Icons.qr_code_scanner,
                      text: 'Scan Face',
                      onTap: () => Get.to(() => const FacialScanScreen()),
                      isDark: isDark,
                    ),
                    SizedBox(height: mediaQuery.height * 0.02),
                    _buildActionButton(
                      mediaQuery,
                      icon: Icons.app_registration,
                      text: 'Manual Registration',
                      onTap: () => Get.to(() => const BiometricCaptureScreen()),
                      isDark: isDark,
                    ),
                    SizedBox(height: mediaQuery.height * 0.02),
                    _buildActionButton(
                      mediaQuery,
                      icon: Icons.cases_outlined,
                      text: 'View Assigned Cases',
                      onTap: () {},
                      isDark: isDark,
                    ),

                    SizedBox(height: mediaQuery.height * 0.05),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Quick Access',
                        style: TextStyle(fontSize: 20, color: textColor),
                      ),
                    ),
                    SizedBox(height: mediaQuery.height * 0.02),

                    // Quick Access Grid
                    _buildQuickAccessRow(mediaQuery, [
                      'Reports',
                      'Alerts',
                    ], isDark),
                    SizedBox(height: mediaQuery.height * 0.02),
                    _buildQuickAccessRow(mediaQuery, [
                      'Map',
                      'Settings',
                    ], isDark),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildActionButton(
    Size mediaQuery, {
    required IconData icon,
    required String text,
    required VoidCallback onTap,
    required bool isDark,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: mediaQuery.height * 0.09,
        width: mediaQuery.width,
        decoration: BoxDecoration(
          color: isDark ? Colors.white10 : Colors.black.withOpacity(0.07),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon, color: Colors.red),
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessRow(
    Size mediaQuery,
    List<String> items,
    bool isDark,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: items.map((item) {
        IconData icon;
        switch (item) {
          case 'Reports':
            icon = Icons.file_copy;
            break;
          case 'Alerts':
            icon = Icons.alarm_rounded;
            break;
          case 'Map':
            icon = Icons.map;
            break;
          case 'Settings':
            icon = Icons.settings;
            break;
          default:
            icon = Icons.help;
        }
        return Container(
          height: mediaQuery.height * 0.15,
          width: mediaQuery.width * 0.4,
          decoration: BoxDecoration(
            color: isDark ? Colors.white10 : Colors.black.withOpacity(0.07),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20, color: Colors.red),
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                item,
                style: TextStyle(
                  fontSize: 20,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vagrancy_beggars/view/screens/biometric_capture_screen.dart';
// import 'package:vagrancy_beggars/view/screens/facial_scan_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
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
//                   leading: Icon(Icons.person, color: Colors.white, size: 30),
//                   title: Text(
//                     'Officer Portal',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   trailing: Icon(
//                     Icons.notifications,
//                     color: Colors.white,
//                     size: 30,
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
//                   SizedBox(height: mediaQuery.height * 0.02),

//                   Container(
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black12,
//                           blurRadius: 4,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       children: [
//                         // Profile circle placeholder
//                         const CircleAvatar(
//                           radius: 26,
//                           backgroundColor: Color(
//                             0xFFE8E9EC,
//                           ), // light gray background
//                           child: Icon(
//                             Icons.person,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                         ),
//                         const SizedBox(width: 12),

//                         // Name, ID, and Status
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Name and Designation
//                             RichText(
//                               text: const TextSpan(
//                                 text: 'Dr. Usman Anwar ',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                     text: '(IG Police)',
//                                     style: TextStyle(
//                                       color: Colors.black54,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),

//                             const SizedBox(height: 4),

//                             // ID
//                             const Text(
//                               'ID: 45897',
//                               style: TextStyle(
//                                 color: Colors.black54,
//                                 fontSize: 13,
//                               ),
//                             ),

//                             const SizedBox(height: 6),

//                             // On Duty Status
//                             Row(
//                               children: const [
//                                 Icon(
//                                   Icons.circle,
//                                   color: Colors.green,
//                                   size: 10,
//                                 ),
//                                 SizedBox(width: 5),
//                                 Text(
//                                   'On duty',
//                                   style: TextStyle(
//                                     color: Colors.black87,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.05),
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(() => FacialScanScreen());
//                     },
//                     child: Container(
//                       height: mediaQuery.height * 0.09,
//                       width: mediaQuery.width,
//                       decoration: BoxDecoration(
//                         color: Colors.black.withOpacity(0.07),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Icon(Icons.qr_code_scanner, color: Colors.red),
//                           SizedBox(width: 20),
//                           Text('Scan Face', style: TextStyle(fontSize: 20)),
//                           SizedBox(width: 20),
//                           Icon(Icons.arrow_forward_ios),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.02),
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(() => BiometricCaptureScreen());
//                     },
//                     child: Container(
//                       height: mediaQuery.height * 0.09,
//                       width: mediaQuery.width,
//                       decoration: BoxDecoration(
//                         color: Colors.black.withOpacity(0.07),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Icon(Icons.app_registration, color: Colors.red),
//                           Text(
//                             'Manual Registration',
//                             style: TextStyle(fontSize: 20),
//                           ),
//                           Icon(Icons.arrow_forward_ios),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.02),

//                   Container(
//                     height: mediaQuery.height * 0.09,
//                     width: mediaQuery.width,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.07),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Icon(Icons.cases_outlined, color: Colors.red),
//                         Text(
//                           'View Assigned Cases',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Icon(Icons.arrow_forward_ios),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.05),
//                   Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Text('Quick Access', style: TextStyle(fontSize: 20)),
//                   ),
//                   SizedBox(height: mediaQuery.height * 0.02),
//                   Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             height: mediaQuery.height * 0.15,
//                             width: mediaQuery.width * 0.4,
//                             decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.07),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.file_copy,
//                                   size: 20,
//                                   color: Colors.red,
//                                 ),
//                                 SizedBox(height: mediaQuery.height * 0.02),
//                                 Text('Reports', style: TextStyle(fontSize: 20)),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             height: mediaQuery.height * 0.15,
//                             width: mediaQuery.width * 0.4,
//                             decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.07),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.alarm_rounded,
//                                   size: 20,
//                                   color: Colors.red,
//                                 ),
//                                 SizedBox(height: mediaQuery.height * 0.02),
//                                 Text('Alerts', style: TextStyle(fontSize: 20)),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: mediaQuery.height * 0.02),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Container(
//                             height: mediaQuery.height * 0.15,
//                             width: mediaQuery.width * 0.4,
//                             decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.07),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.map, size: 20, color: Colors.red),
//                                 SizedBox(height: mediaQuery.height * 0.02),
//                                 Text('Map', style: TextStyle(fontSize: 20)),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             height: mediaQuery.height * 0.15,
//                             width: mediaQuery.width * 0.4,
//                             decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.07),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.settings,
//                                   size: 20,
//                                   color: Colors.red,
//                                 ),
//                                 SizedBox(height: mediaQuery.height * 0.02),
//                                 Text(
//                                   'Settings',
//                                   style: TextStyle(fontSize: 20),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
