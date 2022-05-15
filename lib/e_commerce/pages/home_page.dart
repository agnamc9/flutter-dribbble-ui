import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AssetGenImage> headerItems = [
    Assets.eCommerce.images.p1ItemHeader1,
    Assets.eCommerce.images.p1ItemHeader2,
  ];

  List<AssetGenImage> items = [
    Assets.eCommerce.images.p1Item1,
    Assets.eCommerce.images.p1Item2,
    Assets.eCommerce.images.p1Item3,
  ];

  List<String> itemNames = [
    "Ipad pro 2015",
    "Smart TV 32''",
    "Keyboard",
  ];

  List<String> categories = [
    "Clothing",
    "Gadget",
    "Gaming",
    "Fashion",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 26,
                            height: 4,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 51, 80, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            width: 20,
                            height: 4,
                            decoration: BoxDecoration(
                              //color: Colors.blue,
                              color: Color.fromRGBO(123, 146, 185, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Toqo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            size: 30,
                          ),
                          Positioned(
                            right: 6,
                            top: 6,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16)),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search..",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: const Icon(Icons.settings),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: headerItems.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: headerItems[index],
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.only(
                            right: 16,
                          ),
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: index % 2 == 0
                                    ? Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Discount',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '70%',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    : Container(),
                              ),
                              const Text(
                                '#Gadgetdays',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 25,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 25,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Live Discount',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 5),
                      Assets.eCommerce.images.flame.image(width: 30),
                      Spacer(),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 45,
                    child: ListView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: index == 1 ? Colors.orange : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: const EdgeInsets.only(
                            right: 16,
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          alignment: Alignment.center,
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontSize: 18,
                              color: index == 1 ? Colors.white : Colors.black,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 200,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: items[index],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 8,
                                          right: 8,
                                          child: FloatingActionButton(
                                            backgroundColor: Colors.white,
                                            onPressed: () {},
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                              ),
                                            ),
                                            padding: const EdgeInsets.all(8),
                                            child: const Text(
                                              '- 30 %',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      itemNames[index],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomBarView(),
    );
  }
}
