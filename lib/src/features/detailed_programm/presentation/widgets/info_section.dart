import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final Widget content;

  const InfoSection({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          content,
        ],
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String content;
  const Subtitle({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[600],
      ),
    );
  }
}
