import 'package:flutter/material.dart';

class MatchFoundScreen extends StatefulWidget {
  const MatchFoundScreen({super.key});

  @override
  State<MatchFoundScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MatchFoundScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQuery.height * 0.06),
            Container(
              height: mediaQuery.height * 0.1,
              width: mediaQuery.width,
              decoration: BoxDecoration(color: Color(0xff140D44)),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
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
                  Text('Usama Kamal', style: TextStyle(fontSize: 22)),
                  Text('Age: 42', style: TextStyle(fontSize: 18)),
                  SizedBox(height: mediaQuery.height * 0.05),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Personal Details',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    height: mediaQuery.height * 0.2,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: mediaQuery.height * 0.02),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.blueAccent),
                              SizedBox(width: 5),
                              Text(
                                'Location Found: Lahore, Punjab',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.02),
                          Row(
                            children: [
                              Icon(
                                Icons.perm_identity,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Identification Marks: Scar on left cheek',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.02),
                          Row(
                            children: [
                              Icon(Icons.alarm, color: Colors.blueAccent),
                              SizedBox(width: 5),
                              Text(
                                'Last Seen: 3 days ago',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
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
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    height: mediaQuery.height * 0.22,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: mediaQuery.height * 0.02),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.blueAccent),
                              SizedBox(width: 5),
                              Text(
                                'Previously Found at: Liberty Market,\n Lahore (Jan 15), Saddar Bazar',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.02),
                          Row(
                            children: [
                              Icon(Icons.notes, color: Colors.blueAccent),
                              SizedBox(width: 5),
                              Text(
                                'Notes: Has refused shelter twice',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: mediaQuery.height * 0.02),
                          Row(
                            children: [
                              Icon(Icons.category, color: Colors.red),
                              SizedBox(width: 5),
                              Text(
                                'Category: Repeat Offender',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.05),

                  Container(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xff140D44), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'Mark Present Again',
                        style: TextStyle(
                          color: Color(0xff140D44),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.02),
                  Container(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      color: Color(0xffED1C24),
                      borderRadius: BorderRadius.circular(30),
                      //border: Border.all(color: Color(0xff140D44), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'Take Action (FIR/Warning)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.02),
                  Container(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width,
                    decoration: BoxDecoration(
                      color: Color(0xff140D44),

                      borderRadius: BorderRadius.circular(30),
                      //border: Border.all(color: Color(0xff140D44), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'Assign Shelter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
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
