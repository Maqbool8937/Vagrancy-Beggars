import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PersonalInfoController extends GetxController {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final clothingController = TextEditingController();
  final notesController = TextEditingController();

  var gender = 'male'.obs;

  // Example function to handle Continue
  void onContinue() {
    // You can store or validate data here
    print('Name: ${nameController.text}');
    print('Gender: ${gender.value}');
    print('Age: ${ageController.text}');
    print('Clothing: ${clothingController.text}');
    print('Notes: ${notesController.text}');

    // Navigate to next screen (Step 3)
    Get.toNamed('/step3');
  }

  @override
  void onClose() {
    nameController.dispose();
    ageController.dispose();
    clothingController.dispose();
    notesController.dispose();
    super.onClose();
  }
}
