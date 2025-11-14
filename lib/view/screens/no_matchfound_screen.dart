import 'package:flutter/material.dart';

class NoMatchfoundScreen extends StatefulWidget {
  const NoMatchfoundScreen({super.key});

  @override
  State<NoMatchfoundScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NoMatchfoundScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mediaQuery.height * 0.3),
            Icon(Icons.search, size: 100),

            Text(
              'No Match Found',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: mediaQuery.height * 0.02),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                textAlign: TextAlign.center,
                'We could not find any changes in your database. You may register a new individual to proceed',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            Container(
              height: mediaQuery.height * 0.07,
              width: mediaQuery.width * 0.9,
              decoration: BoxDecoration(
                color: Color(0xff140D44),

                borderRadius: BorderRadius.circular(30),
                //border: Border.all(color: Color(0xff140D44), width: 2),
              ),
              child: Center(
                child: Text(
                  'Register New Individual',
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
    );
  }
}
