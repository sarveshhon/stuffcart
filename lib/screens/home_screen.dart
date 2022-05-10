import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuffcart/controllers/home_controller.dart';
import 'package:stuffcart/screens/about_screen.dart';
import 'package:stuffcart/screens/cart_screen.dart';
import 'package:stuffcart/screens/category_screen.dart';
import 'package:stuffcart/screens/order_screen.dart';
import 'package:stuffcart/screens/product_screen.dart';
import 'package:stuffcart/screens/profile_screen.dart';

import '../widget/botom_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController());

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

  Widget myHomeStyle(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return categoriesContainer(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                      list: controller.myHomeStyleList,
                      categoryName: "Home Style"),
                ),
              );
            },
            image: controller.myHomeStyleList[0].image,
            name: "Home Style");
      },
    );
  }

  Widget myChaat(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return categoriesContainer(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                      list: controller.myHomeStyleList, categoryName: "Chaat"),
                ),
              );
            },
            image: controller.myChaatList[0].image,
            name: "Chaat");
      },
    );
  }

  Widget myChicken(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return categoriesContainer(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                      list: controller.myChickenList, categoryName: "Chicken"),
                ),
              );
            },
            image: controller.myChickenList[0].image,
            name: "Chicken");
      },
    );
  }

  Widget myPizza(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return categoriesContainer(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                      list: controller.myPizzaList, categoryName: "Pizza"),
                ),
              );
            },
            image: controller.myPizzaList[0].image,
            name: "Pizza");
      },
    );
  }

  Widget myBurger(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return categoriesContainer(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                      list: controller.myBurgerList, categoryName: "Burger"),
                ),
              );
            },
            image: controller.myBurgerList[0].image,
            name: "Burger");
      },
    );
  }

  Widget myMomos(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return categoriesContainer(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                      list: controller.myMomosList, categoryName: "Momos"),
                ),
              );
            },
            image: controller.myMomosList[0].image,
            name: "Momos");
      },
    );
  }

  Widget myFries(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return categoriesContainer(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                      list: controller.myFriesList, categoryName: "Fries"),
                ),
              );
            },
            image: controller.myFriesList[0].image,
            name: "Fries");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                      builder: (context) => const OrderScreen(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: drawerItems("About", Icons.info),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
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
                    myHomeStyle(context),
                    myChaat(context),
                    myChicken(context),
                    myPizza(context),
                    myBurger(context),
                    myMomos(context),
                    myFries(context),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: GetX<HomeController>(
                  builder: ((controller) {
                    return GridView.builder(
                      itemCount: controller.myFoodList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemBuilder: (context, index) {
                        return BottomContainer(
                          image: controller.myFoodList[index].image,
                          name: controller.myFoodList[index].name,
                          price: controller.myFoodList[index].price.toString(),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProductScreen(
                                    name: controller.myFoodList[index].name,
                                    image: controller.myFoodList[index].image,
                                    price: controller.myFoodList[index].price),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
