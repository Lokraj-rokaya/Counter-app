import 'package:flutter/material.dart';
import '../widgets/counter_header.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_buttons.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  // No more StatefulWidget — Provider handles state!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 207, 207),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              // Section 1: Header
              CounterHeader(),

              // Section 2: Display
              CounterDisplay(),

              // Section 3: Buttons
              CounterButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
