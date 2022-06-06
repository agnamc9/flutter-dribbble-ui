import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final double size;
  const PlayButton({
    Key? key,
    this.size = 70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.play_arrow_rounded,
        color: Colors.white,
        size: size * .5,
      ),
    );
  }
}
