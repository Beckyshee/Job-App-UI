import 'package:flutter/material.dart';
import 'package:my_project_becky/my%20home/models/jobs.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  IconText(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.yellow),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
