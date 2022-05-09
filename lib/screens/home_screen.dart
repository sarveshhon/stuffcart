import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stuffcart/model/categories_model.dart';
import 'package:stuffcart/provider/my_provider.dart';
import 'package:stuffcart/screens/about_screen.dart';
import 'package:stuffcart/screens/cart_screen.dart';
import 'package:stuffcart/screens/category_screen.dart';
import 'package:stuffcart/screens/order_screen.dart';
import 'package:stuffcart/screens/product_screen.dart';
import 'package:stuffcart/screens/profile_screen.dart';

import '../model/food_model.dart';
import '../widget/botom_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<CategoriesModel> homeStyleList = [];
  List<FoodModel> homeStyleFoodList = [];
  List<CategoriesModel> chaatList = [];
  List<FoodModel> chaatFoodList = [];
  List<CategoriesModel> chickenList = [];
  List<FoodModel> chickenFoodList = [];
  List<CategoriesModel> pizzaList = [];
  List<FoodModel> pizzaFoodList = [];
  List<CategoriesModel> burgerList = [];
  List<FoodModel> burgerFoodList = [];
  List<CategoriesModel> momosList = [];
  List<FoodModel> momosFoodList = [];
  List<CategoriesModel> friesList = [];
  List<FoodModel> friesFoodList = [];
  List<FoodModel> foodList = [];

  Widget categoriesContainer(
      {required VoidCallback onTap,
      required String image,
      required String name}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            // child: Container(
            //   height: 70,
            //   width: 70,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(image),
            //     ),
            //     color: Colors.grey.shade200,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            // ),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: NetworkImage(image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        )
      ],
    );
  }

  Widget drawerItems(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget homeStyle(BuildContext context) {
    return Row(
      children: homeStyleList
          .map((e) => categoriesContainer(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        list: homeStyleFoodList, categoryName: "Home Style"),
                  ),
                );
              },
              image: e.image,
              name: e.name))
          .toList(),
    );
  }

  Widget chaat(BuildContext context) {
    return Row(
      children: chaatList
          .map((e) => categoriesContainer(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        list: chaatFoodList, categoryName: "Chaat"),
                  ),
                );
              },
              image: e.image,
              name: e.name))
          .toList(),
    );
  }

  Widget chicken(BuildContext context) {
    return Row(
      children: chickenList
          .map((e) => categoriesContainer(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        list: chickenFoodList, categoryName: "Chicken"),
                  ),
                );
              },
              image: e.image,
              name: e.name))
          .toList(),
    );
  }

  Widget pizza(BuildContext context) {
    return Row(
      children: pizzaList
          .map((e) => categoriesContainer(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        list: pizzaFoodList, categoryName: "Pizza"),
                  ),
                );
              },
              image: e.image,
              name: e.name))
          .toList(),
    );
  }

  Widget burger(BuildContext context) {
    return Row(
      children: burgerList
          .map((e) => categoriesContainer(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        list: burgerFoodList, categoryName: "Burger"),
                  ),
                );
              },
              image: e.image,
              name: e.name))
          .toList(),
    );
  }

  Widget momos(BuildContext context) {
    return Row(
      children: momosList
          .map((e) => categoriesContainer(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        list: momosFoodList, categoryName: "Momos"),
                  ),
                );
              },
              image: e.image,
              name: e.name))
          .toList(),
    );
  }

  Widget fries(BuildContext context) {
    return Row(
      children: friesList
          .map((e) => categoriesContainer(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(
                        list: friesFoodList, categoryName: "Fries"),
                  ),
                );
              },
              image: e.image,
              name: e.name))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);

    provider.getHomeStyleCategories();
    homeStyleList = provider.throwHomeStyleList;
    provider.getChaatCategories();
    chaatList = provider.throwChaatList;
    provider.getChickenCategories();
    chickenList = provider.throwChickenList;
    provider.getPizzaCategories();
    pizzaList = provider.throwPizzaList;
    provider.getBurgerCategories();
    burgerList = provider.throwBurgerList;
    provider.getMomosCategories();
    momosList = provider.throwMomosList;
    provider.getFriesCategories();
    friesList = provider.throwFriesList;
    provider.getFoodList();
    foodList = provider.throwFoodList;

    provider.getHomeStyleFoodCategories();
    homeStyleFoodList = provider.throwHomeStyleFoodList;

    provider.getChaatFoodCategories();
    chaatFoodList = provider.throwChaatFoodList;

    provider.getChickenFoodCategories();
    chickenFoodList = provider.throwChickenFoodList;

    provider.getPizzaFoodCategories();
    pizzaFoodList = provider.throwPizzaFoodList;

    provider.getBurgerFoodCategories();
    burgerFoodList = provider.throwBurgerFoodList;

    provider.getMomosFoodCategories();
    momosFoodList = provider.throwMomosFoodList;

    provider.getFriesFoodCategories();
    friesFoodList = provider.throwFriesFoodList;

    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/drawer_bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                accountName: Text("Sarvesh Hon"),
                accountEmail: Text("sarveshhon@gmail.com"),
              ),
              GestureDetector(
                child: drawerItems("Profile", Icons.person),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                child: drawerItems("Cart", Icons.shopping_bag_outlined),
              ),
              GestureDetector(
                child: drawerItems("Orders", Icons.shopping_bag_rounded),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OrderScreen(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: drawerItems("About", Icons.info),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AboutScreen(),
                    ),
                  );
                },
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              drawerItems("Log out", Icons.logout),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("StuffCart"),
        elevation: 0.0,
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: "Search...",
            //       focusColor: Colors.indigo,
            //       prefixIcon: const Icon(
            //         Icons.search,
            //         color: Colors.indigo,
            //       ),
            //       filled: true,
            //       fillColor: Colors.grey.shade200,
            //       border: OutlineInputBorder(
            //         borderSide: BorderSide.none,
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    homeStyle(context),
                    chaat(context),
                    chicken(context),
                    pizza(context),
                    burger(context),
                    momos(context),
                    fries(context),
                    // categoriesContainer("assets/medium10.png", "Medium10"),
                    // categoriesContainer("assets/small8.png", "Small8"),
                    // categoriesContainer("assets/large12.png", "Large12"),
                    // categoriesContainer("assets/large14.png", "Large14"),
                    // categoriesContainer("assets/pecanpie.png", "Pecan Pie"),
                    // categoriesContainer("assets/darkpecans.png", "Dark Pecans"),
                    // categoriesContainer(
                    //     "assets/baconpotatochip.png", "Bacon Chip"),
                    // categoriesContainer("assets/maplenut.png", "Maple Nut"),
                    // categoriesContainer(
                    //     "assets/seasaltcaramels.png", "Salt Caramels"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: foodList
                      .map(
                        (e) => BottomContainer(
                          image: e.image,
                          name: e.name,
                          price: e.price.toString(),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProductScreen(
                                    name: e.name,
                                    image: e.image,
                                    price: e.price),
                              ),
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
