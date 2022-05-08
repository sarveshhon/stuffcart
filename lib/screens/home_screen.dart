import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stuffcart/model/categories_data.dart';
import 'package:stuffcart/provider/my_provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<CategoriesModel> homeStyleList = [];
  List<CategoriesModel> chaatList = [];
  List<CategoriesModel> chickenList = [];
  List<CategoriesModel> pizzaList = [];
  List<CategoriesModel> burgerList = [];
  List<CategoriesModel> momosList = [];
  List<CategoriesModel> friesList = [];

  Widget categoriesContainer(String image, String name) {
    return Column(
      children: [
        Padding(
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

  Widget bottomContainer(String image, String name, String price) {
    return Container(
      height: 270,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: AssetImage(image),
          ),
          ListTile(
            leading: Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              "\$" + price,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 8.0),
          //   child: Row(
          //     children: const [
          //       Icon(
          //         Icons.star,
          //         size: 20,
          //         color: Colors.black,
          //       ),
          //       Icon(
          //         Icons.star,
          //         size: 20,
          //         color: Colors.black,
          //       ),
          //       Icon(
          //         Icons.star,
          //         size: 20,
          //         color: Colors.black,
          //       ),
          //       Icon(
          //         Icons.star,
          //         size: 20,
          //         color: Colors.black,
          //       ),
          //       Icon(
          //         Icons.star,
          //         size: 20,
          //         color: Colors.black,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
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

  Widget homeStyle() {
    return Row(
      children: homeStyleList
          .map((e) => categoriesContainer(e.image, e.name))
          .toList(),
    );
  }

  Widget chaat() {
    return Row(
      children:
          chaatList.map((e) => categoriesContainer(e.image, e.name)).toList(),
    );
  }

  Widget chicken() {
    return Row(
      children:
          chickenList.map((e) => categoriesContainer(e.image, e.name)).toList(),
    );
  }

  Widget pizza() {
    return Row(
      children:
          pizzaList.map((e) => categoriesContainer(e.image, e.name)).toList(),
    );
  }

  Widget burger() {
    return Row(
      children:
          burgerList.map((e) => categoriesContainer(e.image, e.name)).toList(),
    );
  }

  Widget momos() {
    return Row(
      children:
          momosList.map((e) => categoriesContainer(e.image, e.name)).toList(),
    );
  }

  Widget fries() {
    return Row(
      children:
          friesList.map((e) => categoriesContainer(e.image, e.name)).toList(),
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
              drawerItems("Profile", Icons.person),
              drawerItems("Cart", Icons.add_shopping_cart),
              drawerItems("Orders", Icons.shop),
              drawerItems("About", Icons.info),
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
        actions: const [
          Icon(Icons.shopping_basket_sharp),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  focusColor: Colors.indigo,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.indigo,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  homeStyle(),
                  chaat(),
                  chicken(),
                  pizza(),
                  burger(),
                  momos(),
                  fries(),
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: 510,
              child: GridView.count(
                shrinkWrap: false,
                primary: false,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  bottomContainer("assets/medium10.png", "Google", "59.45"),
                  bottomContainer(
                      "assets/stuffcart_logo.png", "Apple", "45.92"),
                  bottomContainer(
                      "assets/stuffcart_logo.png", "Apple", "45.92"),
                  bottomContainer(
                      "assets/stuffcart_logo.png", "Apple", "45.92"),
                  bottomContainer(
                      "assets/stuffcart_logo.png", "Apple", "45.92"),
                  bottomContainer(
                      "assets/stuffcart_logo.png", "Apple", "45.92"),
                  bottomContainer(
                      "assets/stuffcart_logo.png", "Google", "59.45"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
