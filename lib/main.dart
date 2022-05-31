import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/e_commerce/e_commerce.dart';
import 'package:flutter_dribbble_ui/food_delivery/food_delivery.dart';
import 'package:flutter_dribbble_ui/meet-app/meet-app.dart';
import 'package:flutter_dribbble_ui/pet_adoption/pet_adoption.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<AppItem> apps = [
    AppItem(
      name: "Pet App",
      page: const PetsPage(),
    ),
    AppItem(
      name: "E-Commerce App",
      page: const IntroPage(),
    ),
    AppItem(
      name: "Delivery App",
      page: const DeliveryHomePage(),
    ),
    AppItem(
      name: "Meet App",
      page: const ChatLoginPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dribbble UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Dribbble UI'),
        ),
        body: ListView.separated(
            itemCount: apps.length,
            separatorBuilder: (context, index) {
              return const Divider(color: Colors.grey);
            },
            itemBuilder: (context, index) {
              var appItem = apps[index];
              return InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => appItem.page)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(appItem.name),
                ),
              );
            }),
      ),
    );
  }
}

class AppItem {
  final String name;
  final Widget page;

  AppItem({
    required this.name,
    required this.page,
  });
}
