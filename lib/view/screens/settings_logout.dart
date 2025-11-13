import 'package:flutter/material.dart';

class SettingsLogout extends StatelessWidget {
  const SettingsLogout({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: ,
      body: Column(
        children: [
          Container(
            width: mediaquery.width,
            height: mediaquery.height * 0.35,

            decoration: BoxDecoration(color: Color(0xff1F2937)),
            child: Column(
              children: [
                SizedBox(height: mediaquery.height * 0.1),

                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 40,
                  child: Icon(Icons.person),
                ),
                SizedBox(height: mediaquery.height * 0.03),
                Text(
                  'Dr.Usman Anwar (IG Police)',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: mediaquery.height * 0.01),

                Text(
                  'ID: 56745',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: mediaquery.height * 0.05),

          Container(
            height: mediaquery.height * 0.3,
            width: mediaquery.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.lock, color: Colors.blueAccent),
                  title: Text(
                    'Change Password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.language, color: Colors.blueAccent),
                  title: Text(
                    'Langauge',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.nightlight_outlined,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Dark Mode',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.toggle_off_outlined, size: 40),
                ),
              ],
            ),
          ),
          SizedBox(height: mediaquery.height * 0.03),
          Container(
            height: mediaquery.height * 0.1,
            width: mediaquery.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Center(
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text(
                  'LogOut',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //  trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
