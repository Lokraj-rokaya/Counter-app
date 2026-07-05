import 'package:flutter/material.dart';

class CounterHeader extends StatelessWidget {
  const CounterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 223, 226),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          Icon(Icons.calculate, color: Colors.white, size: 40),
          SizedBox(height: 8),
          Text(
            'Counter App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Tap buttons to change the count',
            style: TextStyle(
              color: Color.fromARGB(179, 192, 103, 103),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
