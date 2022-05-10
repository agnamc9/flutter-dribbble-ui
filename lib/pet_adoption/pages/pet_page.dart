import 'package:flutter/material.dart';

import '../pet_adoption.dart';

class PetPage extends StatefulWidget {
  final Pet pet;

  const PetPage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  late Pet pet;

  @override
  void initState() {
    pet = widget.pet;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: pet.color,
                  padding: const EdgeInsets.all(4),
                  child: Image.asset(pet.image),
                  height: screenHeight / 3,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 60),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  _Info(
                                    title: "Age",
                                    value: "3 months",
                                  ),
                                  SizedBox(width: 20),
                                  _Info(
                                    title: "Weight",
                                    value: "8 Kg",
                                  ),
                                  SizedBox(width: 20),
                                  _Info(
                                    title: "Color",
                                    value: "Grey",
                                  )
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Descriptions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc mattis, ligula at feugiat semper, nunc tortor cursus nisl, a commodo libero velit id velit. Nam sit amet nisl ac diam pharetra posuere eget vitae velit',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Text(
                            'Adopt Now',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          padding: const EdgeInsets.all(16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 250,
              left: 16,
              right: 16,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pet.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop_sharp,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                'Distance (${pet.distance})',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      padding: const EdgeInsets.all(4),
                      child: Icon(
                        pet.gender,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final String title;
  final String value;
  const _Info({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
