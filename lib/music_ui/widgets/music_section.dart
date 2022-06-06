import 'package:flutter/material.dart';

class MusicSection extends StatelessWidget {
  final String name;

  const MusicSection({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Text(
            "See all",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 2),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.grey,
            size: 12,
          )
        ],
      ),
    );
  }
}
