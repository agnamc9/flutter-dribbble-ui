import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';
import 'package:flutter_dribbble_ui/music_ui/music_ui.dart';

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({Key? key}) : super(key: key);

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Song> songs = [
      Song(
        title: "Yadet Mioftam",
        artist: "Sareen",
        cover: Assets.musicUi.images.sareen,
      ),
      Song(
        title: "Marcel",
        artist: "Hale",
        cover: Assets.musicUi.images.hale,
      ),
      Song(
        title: "Baz Mirim Baham",
        artist: "Sijal",
        cover: Assets.musicUi.images.sijal,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: const Color.fromRGBO(249, 251, 252, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  const Text(
                    "Your logo",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.black,
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
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const MusicSection(
                      name: "Playlists",
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        height: 130,
                        child: ListView.builder(
                            itemCount: playlists.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              var selected = index == 1;
                              var playlist = playlists[index];
                              return Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: SizedBox(
                                  width: 130,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: playlist,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.transparent,
                                                Colors.black.withOpacity(0.2),
                                                Colors.black.withOpacity(0.4),
                                                Colors.black.withOpacity(0.6),
                                                Colors.black.withOpacity(0.8),
                                              ],
                                            ),
                                          ),
                                          alignment: Alignment.bottomCenter,
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            "Playlist Name",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        if (selected)
                                          Center(
                                            child: Icon(
                                              Icons.play_arrow_rounded,
                                              color: Colors.white,
                                              size: 60,
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const MusicSection(
                      name: "Popular Artists",
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        height: 120,
                        child: ListView.builder(
                            itemCount: artists.length * 2,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              var artist = artists[index % artists.length];
                              return Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (c) => ArtistPage()));
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage: artist.image,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        artist.name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const MusicSection(
                      name: "Songs",
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListView.builder(
                          itemCount: songs.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var selected = index == 1;
                            var song = songs[index];
                            return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (c) => MusicPlayerPage(),
                                    ),
                                  );
                                },
                                child: MusicItem(
                                  selected: selected,
                                  song: song,
                                ));
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade400,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_rounded), label: "Interest"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined), label: "Library"),
          ]),
    );
  }
}
