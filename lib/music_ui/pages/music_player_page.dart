import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';

import '../widgets/widgets.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 252, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                color: const Color.fromRGBO(249, 251, 252, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_new,
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
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Assets.musicUi.images.vabastegi,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.white,
                            width: 7,
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(3, 3),
                              color: Colors.grey.shade300,
                              spreadRadius: 10,
                              blurRadius: 10,
                            )
                          ]),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Vabastegi",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Ali Lohrasbi",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Slider(
                      min: 0,
                      max: 100,
                      value: 50,
                      onChanged: (value) {},
                      activeColor: Colors.black,
                      inactiveColor: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2:07',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          Text(
                            '4:31',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1x',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.skip_previous_rounded,
                          color: Colors.black,
                          size: 50,
                        ),
                        PlayButton(),
                        Icon(
                          Icons.skip_next_rounded,
                          color: Colors.black,
                          size: 50,
                        ),
                        Icon(
                          Icons.replay,
                          color: Colors.grey,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu_open_rounded,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.grey,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
