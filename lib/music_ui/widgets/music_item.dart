import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/music_ui/music_ui.dart';

class MusicItem extends StatelessWidget {
  final bool selected;
  final Song? song;
  const MusicItem({
    Key? key,
    this.selected = false,
    this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(8),
      decoration: selected
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                  BoxShadow(
                    offset: const Offset(0.5, 0.5),
                    color: Colors.grey.shade200,
                    spreadRadius: 2,
                    blurRadius: 10,
                  )
                ])
          : null,
      child: Row(
        children: [
          MusicAvatar(
            cover: song?.cover,
            size: 60,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  song?.title ?? '',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  song?.artist ?? '',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.favorite_outline,
            color: Colors.grey,
            size: 30,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}
