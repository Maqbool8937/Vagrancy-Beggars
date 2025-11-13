import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vagrancy_beggars/controllers/getxController/final_step_controller.dart';

class FinalStepScreen extends StatelessWidget {
  const FinalStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FinalStepController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Step header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Step 4 of 4 • Final Step",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "90%",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Progress bar
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: 0.9,
                  backgroundColor: Colors.grey[300],
                  color: Colors.redAccent,
                  minHeight: 6,
                ),
              ),
              const SizedBox(height: 25),

              // Officer Notes
              const Text(
                "Officer Notes",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Container(width: 40, height: 3, color: Colors.indigo.shade900),
              const SizedBox(height: 10),
              TextField(
                controller: controller.notesController,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Add any relevant case notes here...",
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 30),

              // Shelter Assignment
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Shelter Assignment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "Optional",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.redAccent.shade200,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(width: 40, height: 3, color: Colors.indigo.shade900),
              const SizedBox(height: 10),

              // Dropdown (Reactive)
              Obx(
                () => DropdownButtonFormField<String>(
                  value: controller.selectedShelter.value.isEmpty
                      ? null
                      : controller.selectedShelter.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.home_work_outlined,
                      color: Colors.grey,
                    ),
                    hintText: "Select a shelter...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  items: controller.shelterList
                      .map(
                        (shelter) => DropdownMenuItem<String>(
                          value: shelter,
                          child: Text(shelter),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    controller.selectedShelter.value = value ?? '';
                  },
                ),
              ),

              const Spacer(),

              // Complete Registration button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A0033),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: controller.onCompleteRegistration,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Complete Registration",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
