import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final Widget content;

  final EdgeInsetsGeometry contentPadding;

  const InfoSection({
    super.key,
    required this.title,
    required this.content,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: InfoSectionTitle(title: title),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: contentPadding,
            child: content,
          ),
        ],
      ),
    );
  }
}

class InfoSectionTitle extends StatelessWidget {
  const InfoSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
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
