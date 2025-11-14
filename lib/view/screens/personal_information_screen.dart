import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vagrancy_beggars/controllers/getxController/personal_info_controller.dart';
import 'package:vagrancy_beggars/controllers/getxController/photo_location_controller.dart';
import 'package:vagrancy_beggars/view/screens/photo_location_screen.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PersonalInfoController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Step indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Step 2 of 4",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "50%",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // Progress bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.grey[300],
                    color: Colors.redAccent,
                    minHeight: 6,
                  ),
                ),

                const SizedBox(height: 25),
                const Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Name (if known)',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),
                // Name
                TextField(
                  controller: controller.nameController,
                  decoration: InputDecoration(
                    labelText: "Name (if known)",
                    hintText: "Enter name (if known)",
                    // focusColor: Color(0xffD1D5DB),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Gender',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),

                // Gender dropdown (Reactive)
                Obx(
                  () => DropdownButtonFormField<String>(
                    value: controller.gender.value,
                    items: const [
                      DropdownMenuItem(value: 'male', child: Text('male')),
                      DropdownMenuItem(value: 'female', child: Text('female')),
                      DropdownMenuItem(value: 'other', child: Text('other')),
                    ],
                    onChanged: (value) {
                      controller.gender.value = value!;
                    },
                    decoration: InputDecoration(
                      labelText: "Gender",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Estimated Age',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),
                // Estimated Age
                TextField(
                  controller: controller.ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Estimated Age",
                    hintText: "Enter estimated age",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Clothing Description',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),
                // Clothing Description
                TextField(
                  controller: controller.clothingController,
                  maxLines: 2,
                  decoration: InputDecoration(
                    labelText: "Clothing Description",
                    hintText: "Describe the clothing worn",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Behavioral Notes',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),

                // Behavioral Notes
                TextField(
                  controller: controller.notesController,
                  maxLines: 2,
                  decoration: InputDecoration(
                    labelText: "Behavioral Notes",
                    hintText: "Add any notable behavioral observations",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Continue Button
                GestureDetector(
                  onTap: () {
                    Get.to(() => PhotoLocationScreen());
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF140D44),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: controller.onContinue,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Continue",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
