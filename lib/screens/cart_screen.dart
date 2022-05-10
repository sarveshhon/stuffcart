import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuffcart/controllers/cart_controller.dart';
import 'package:stuffcart/screens/order_screen.dart';
import 'package:stuffcart/widget/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.indigo,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: GetX<CartController>(
            builder: (controller) {
              return GestureDetector(
                onTap: () {
                  if (controller.count > 0) {
                    Get.to(const OrderScreen());
                    controller.removeAll();
                  } else {
                    Get.snackbar("Empty Cart", "Please add items to cart",
                        snackPosition: SnackPosition.BOTTOM);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\u{20B9}${controller.totalAmount}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      body: GetX<CartController>(
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.cartItems.length,
            itemBuilder: (context, index) {
              return CartItem(
                image: controller.cartItems[index].image,
                name: controller.cartItems[index].name,
                price: controller.cartItems[index].price,
                quantity: controller.cartItems[index].quantity,
                onTap: () {
                  controller.removeFromCart(index);
                },
              );
            },
          );
        },
      ),
    );
  }
}
