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
      home: const FramePage(),
    );
  }
}

class FramePage extends StatelessWidget {
  const FramePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Frame(),
        ],
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
          _buildHeader(),
          const SizedBox(height: 16),
          _buildContent(),
          const SizedBox(height: 16),
          _buildPlayButton(),
          const SizedBox(height: 16),
          _buildNavigationBar(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: const BoxDecoration(color: Color(0xFF262421)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.person, color: Colors.white, size: 32),
              SizedBox(width: 8),
              Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.emoji_events, color: Colors.amber, size: 24),
              SizedBox(width: 4),
              Text(
                '980/1000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Icon(Icons.person, color: Colors.white, size: 32),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPlayedGames(),
        const SizedBox(height: 32),
        const Text(
          'Choose Difficulty',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        _buildDifficultyOptions(),
        const SizedBox(height: 16),
        // Using the image asset here with the updated path
        Image.asset(
          'Images/trophy.png', // Correct path
          width: 40,
          height: 40,
          color: Colors.amber, // Optional color
        ),
      ],
    );
  }

  Widget _buildPlayedGames() {
    return Row(
      children: [
        const SizedBox(width: 10),
        // Trophy icon
        Image.asset(
          'Images/trophy.png', // Correct path
          width: 40,
          height: 40,
          color: Colors.amber, // Optional color
        ),
        const SizedBox(width: 10),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Played',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDifficultyOptions() {
    return Column(
      children: [
        _buildDifficultyOption("Easy", Icons.sentiment_very_satisfied),
        const SizedBox(height: 10),
        _buildDifficultyOption("Medium", Icons.sentiment_satisfied),
        const SizedBox(height: 10),
        _buildDifficultyOption("Hard", Icons.sentiment_dissatisfied),
      ],
    );
  }

  Widget _buildDifficultyOption(String difficulty, IconData icon) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(width: 8),
          Text(
            difficulty,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF81B64C),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          'Play',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationBar() {
    return SizedBox(
      height: 42,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('Home', Icons.home, true),
          _buildNavItem('Learn', Icons.book, false),
          _buildNavItem('History', Icons.history, false),
          _buildNavItem('Rank', Icons.leaderboard, false),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, IconData icon, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? const Color(0xFF81B64C) : const Color(0xFF929292)),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            color: isActive ? const Color(0xFF81B64C) : const Color(0xFF929292),
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
