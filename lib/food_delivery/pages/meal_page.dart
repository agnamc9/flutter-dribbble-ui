import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/food_delivery/food_delivery.dart';
import 'package:flutter_dribbble_ui/main.dart';

import '../../main.dart';

class MealPage extends StatefulWidget {
  final int position;

  const MealPage({
    Key? key,
    required this.position,
  }) : super(key: key);

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  int categoryIndex = 0;
  bool favorite = false;
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    List<String> sizes = [
      "CH",
      "MD",
      "GD",
      "FM",
    ];
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: screenHeight / 10,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: mealImages[widget.position],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            if (quantity - 1 > 0) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          displayQuantity(quantity),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if (quantity + 1 < 11) {
                              setState(() {
                                quantity++;
                              });
                            }
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        mealNames[widget.position],
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 26,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            favorite = !favorite;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                            color: favorite ? red : Colors.white,
                            shape: BoxShape.circle,
                            border: favorite ? null : Border.all(color: red),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.favorite_outline,
                            color: favorite ? Colors.white : red,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\$50.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum, ipsum non vehicula tempus, odio nibh porta erat, in tristique dui ipsum eget mi. Nulla facilisi. Fusce mattis sem vestibulum scelerisque vehicula. Duis pulvinar ornare tellus.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Choose size',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                        itemCount: sizes.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          bool selected = index == categoryIndex;
                          return InkWell(
                            onTap: () {
                              if (categoryIndex != index) {
                                setState(() {
                                  categoryIndex = index;
                                });
                              }
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              width: 70,
                              margin: const EdgeInsets.only(right: 18),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1.5,
                                ),
                                color: selected ? red : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              child: Text(
                                sizes[index],
                                style: TextStyle(
                                  color: selected ? Colors.white : Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    child: const Text(
                      'Add To Bag',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String displayQuantity(int quantity) {
    return quantity < 10 ? '0$quantity' : '$quantity';
  }
}
