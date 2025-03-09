import 'package:flutter/material.dart';

class DetailedProgrammAppBarContent extends StatelessWidget {
  final String title;
  final bool centerTitle;
  final VoidCallback? onBackPressed;

  const DetailedProgrammAppBarContent({
    super.key,
    required this.title,
    this.centerTitle = false,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          centerTitle ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        if (onBackPressed != null) ...[
          IconButton(
            icon: const Icon(Icons.chevron_left, color: Color(0xFF9C6DFF)),
            onPressed: onBackPressed,
          ),
          const SizedBox(width: 8),
        ],
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF9C6DFF),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
