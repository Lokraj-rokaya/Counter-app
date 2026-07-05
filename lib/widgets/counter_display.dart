import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // Watches counter value — rebuilds when it changes
    final counter = context.watch<CounterProvider>().counter;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Current Count',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 12),
          Text(
            '$counter',
            style: TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: counter < 0
                  ? Colors.red
                  : counter > 0
                      ? Colors.green
                      : Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}