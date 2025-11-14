import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vagrancy_beggars/controllers/getxController/photo_location_controller.dart';

class PhotoLocationScreen extends StatelessWidget {
  const PhotoLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PhotoLocationController());

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
                    "Step 3 of 4",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text("80%", style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 8),

              // Progress bar
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: 0.8,
                  backgroundColor: Colors.grey[300],
                  color: Colors.redAccent,
                  minHeight: 6,
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                "Add Photos (Max 3)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // Photo upload section
              Obx(
                () => Row(
                  children: [
                    ...List.generate(controller.images.length, (index) {
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: FileImage(controller.images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            top: 5,
                            child: GestureDetector(
                              onTap: () => controller.removeImage(index),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.close, size: 18),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                    if (controller.images.length < 3)
                      GestureDetector(
                        onTap: controller.pickImage,
                        child: Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, color: Colors.grey),
                                SizedBox(height: 5),
                                Text(
                                  "Add Photo",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Upload clear photos of your property",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 25),

              const Text(
                "Confirm Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // Google Map
              Obx(
                () => SizedBox(
                  height: 200,
                  child: GoogleMap(
                    liteModeEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: controller.selectedLocation.value,
                      zoom: 14.5,
                    ),
                    markers: {
                      Marker(
                        markerId: const MarkerId('selected'),
                        position: controller.selectedLocation.value,
                        draggable: true,
                        onDragEnd: controller.updateLocation,
                      ),
                    },
                    onTap: controller.updateLocation,
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Address box
              Obx(
                () => Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          controller.address.value,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          // Implement edit logic (optional)
                        },
                        icon: const Icon(
                          Icons.edit,
                          size: 16,
                          color: Colors.blue,
                        ),
                        label: const Text(
                          "Edit",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Drag the pin to adjust your exact location",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 40),

              // Continue button
              SizedBox(
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
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
