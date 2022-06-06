import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';
import 'package:flutter_dribbble_ui/music_ui/music_ui.dart';

import '../widgets/widgets.dart';

class ArtistPage extends StatefulWidget {
  const ArtistPage({Key? key}) : super(key: key);

  @override
  State<ArtistPage> createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  @override
  Widget build(BuildContext context) {
    List<Song> songs = [
      Song(
          title: "Kari Kardi",
          artist: "Saaren",
          cover: Assets.musicUi.images.karikardi),
      Song(
          title: "Daram Miram",
          artist: "Saaren",
          cover: Assets.musicUi.images.daramMiram),
      Song(
          title: "Par Par",
          artist: "Saaren",
          cover: Assets.musicUi.images.parpar),
      Song(title: "Bazi", artist: "Saaren", cover: Assets.musicUi.images.baazi),
    ];
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 252, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 250,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: Assets.musicUi.images.sareen2,
                fit: BoxFit.cover,
              )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "SAAREN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "37,574 Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "12 Music",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "1h 16m",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 242, 243, 1),
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.grey,
                        size: 35,
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.arrow_circle_down_rounded,
                        color: Colors.grey,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.more_vert_rounded,
                        color: Colors.grey,
                        size: 35,
                      ),
                      Spacer(),
                      PlayButton(size: 55),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                    itemCount: songs.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var selected = index == 1;
                      return MusicItem(
                        selected: selected,
                        song: songs[index],
                      );
                    }),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(239, 242, 243, 1),
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -5),
                      color: Colors.grey.shade200,
                      spreadRadius: 10,
                      blurRadius: 10,
                    )
                  ]),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  MusicAvatar(
                    cover: Assets.musicUi.images.vabastegi,
                    border: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yadet Mioftam",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Saaren",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                  SizedBox(width: 10),
                  PlayButton(size: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
