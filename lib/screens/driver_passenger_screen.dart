import 'package:flutter/material.dart';

class DriverPassengerScreen extends StatelessWidget {
  const DriverPassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f2f2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Pick which type are you',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildChoiceButton(
              icon: Icons.drive_eta,
              label: 'Driver',
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              shadowColor: Colors.blue.withOpacity(0.6),
            ),
            const SizedBox(height: 30),
            const Text(
              'OR',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            _buildChoiceButton(
              icon: Icons.hail,
              label: 'Passenger',
              gradient: const LinearGradient(
                colors: [const Color(0xFF91C749), Colors.lightGreenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              shadowColor: Colors.lightGreen.withOpacity(0.6),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChoiceButton(
      {required IconData icon,
      required String label,
      required Gradient gradient,
      required Color shadowColor}) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 90, color: Colors.white),
          const SizedBox(height: 15),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
