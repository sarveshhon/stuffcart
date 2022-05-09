import 'package:flutter/material.dart';
import 'package:stuffcart/screens/product_screen.dart';

import '../model/food_model.dart';
import '../widget/botom_container.dart';

class CategoryScreen extends StatelessWidget {
  List<FoodModel> list = [];
  final String categoryName;
  CategoryScreen({Key? key, required this.list, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          categoryName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: list
            .map(
              (e) => BottomContainer(
                image: e.image,
                name: e.name,
                price: e.price.toString(),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(
                          name: e.name, image: e.image, price: e.price),
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
