import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vagrancy_beggars/view/screens/confirmation_screen.dart';

class FinalStepController extends GetxController {
  final notesController = TextEditingController();
  var selectedShelter = ''.obs;

  final shelterList = [
    'Downtown Shelter',
    'Hope Center',
    'Safe Haven',
    'Community Care Shelter',
  ];

  void onCompleteRegistration() {
    final notes = notesController.text.trim();
    final shelter = selectedShelter.value;

    print('Officer Notes: $notes');
    print('Assigned Shelter: ${shelter.isEmpty ? "None" : shelter}');

    // Simulate navigation or success
    Get.snackbar(
      "Registration Complete",
      "The case has been successfully registered.",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.shade600,
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );

    // Navigate or reset if needed
    Get.to(() => ConfirmationScreen());
    // Get.offAllNamed('/home');
  }

  @override
  void onClose() {
    notesController.dispose();
    super.onClose();
  }
}
