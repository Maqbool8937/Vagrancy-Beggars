import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:vagrancy_beggars/controllers/getxController/biometric_controller.dart';

class BiometricCaptureScreen extends StatelessWidget {
  const BiometricCaptureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BiometricController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Step 1 of 4"),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: 0.2,
            backgroundColor: Colors.grey.shade300,
            color: Colors.redAccent,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Biometric Capture",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "We need to capture your biometric data for secure identification.",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
              const SizedBox(height: 20),

              // Face Detection Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 180,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: CustomPaint(painter: _FaceOutlinePainter()),
                        ),
                        if (controller.isScanningFace.value)
                          Lottie.asset(
                            'assets/scan_animation.json',
                            width: 120,
                            repeat: true,
                          ),
                        if (controller.isFaceDetected.value)
                          const Icon(
                            Icons.verified,
                            color: Colors.green,
                            size: 60,
                          ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Face Detection",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          controller.isScanningFace.value
                              ? "🔴 Scanning..."
                              : controller.isFaceDetected.value
                              ? "✅ Success"
                              : "Idle",
                          style: TextStyle(
                            color: controller.isFaceDetected.value
                                ? Colors.green
                                : Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Position your face within the outline and look directly at the camera.",
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: controller.startFaceScan,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text("Start Face Scan"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Thumb Scan Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: controller.scanThumb,
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: controller.isThumbScanned.value
                            ? const Icon(
                                Icons.verified,
                                color: Colors.green,
                                size: 50,
                              )
                            : Column(
                                children: const [
                                  Icon(
                                    Icons.fingerprint,
                                    color: Colors.grey,
                                    size: 50,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Tap to scan your thumb",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Place your thumb on the scanner when prompted.",
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Info
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.lock_outline, color: Colors.black54, size: 18),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Your biometric data is securely encrypted and will only be used for authentication purposes.",
                        style: TextStyle(color: Colors.black54, fontSize: 12.5),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Continue Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Next", "Continue to the next step");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0A0E60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Continue ➜",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.redAccent
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width * 0.3;

    canvas.drawCircle(center, radius, paint);
    canvas.drawLine(
      Offset(center.dx - radius, center.dy),
      Offset(center.dx + radius, center.dy),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
