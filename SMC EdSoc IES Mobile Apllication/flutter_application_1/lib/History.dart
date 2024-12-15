import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const Scaffold(
        body: SingleChildScrollView(
          child: Frame(),
        ),
      ),
    );
  }
}

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Color(0xFF302E2B)),
      child: Column(
        children: [
          // Completed Games Container
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Container(
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Completed Games',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.85),
                          fontSize: 17,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '…',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 20,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      // Add your game results here
                      // Example of a game result row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Players', style: TextStyle(color: Colors.white.withOpacity(0.5))),
                          Text('Result', style: TextStyle(color: Colors.white.withOpacity(0.5))),
                          Text('Accuracy', style: TextStyle(color: Colors.white.withOpacity(0.5))),
                          Text('Moves', style: TextStyle(color: Colors.white.withOpacity(0.5))),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Add more game result rows as needed
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20), // Adding spacing between containers

          // Bottom button Container
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(color: Color(0xFF1B1B1A)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF81B64C),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    'Play',
                    style: TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'Montserrat', fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.home, color: Color(0xFF929292), size: 20),
                        Text('Home', style: TextStyle(color: Color(0xFF929292), fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.school, color: Color(0xFF929292), size: 20),
                        Text('Learn', style: TextStyle(color: Color(0xFF929292), fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.history, color: Color(0xFF81B64C), size: 20),
                        Text('History', style: TextStyle(color: Color(0xFF81B64C), fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.more_horiz, color: Color(0xFF929292), size: 20),
                        Text('More', style: TextStyle(color: Color(0xFF929292), fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
