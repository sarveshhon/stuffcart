import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String name;
  final String image;
  final int price;
  final int quantity;
  final VoidCallback onTap;

  const CartItem({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.only(left: 1, right: 1, bottom: 1, top: 1),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
      height: 172,
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: Container(
                width: 160,
                height: 170,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(image),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 170,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "A StuffCart Product",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\u{20B9} $price",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // IconButton(
                          //   iconSize: 28,
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.remove_circle_outline),
                          // ),
                          Text(
                            "Qty: $quantity",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                          // IconButton(
                          //   iconSize: 28,
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.add_circle_outline),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            IconButton(
              iconSize: 28,
              onPressed: onTap,
              icon: const Icon(Icons.remove_circle_outline),
            ),
          ]),
        ],
      ),
    );
  }
}
