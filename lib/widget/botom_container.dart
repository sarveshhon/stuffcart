import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  VoidCallback onTap;

  BottomContainer(
      {Key? key,
      required this.image,
      required this.name,
      required this.price,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 270,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Flexible(
              flex: 3,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey.shade200,
                backgroundImage: NetworkImage(image),
              ),
            ),
            Flexible(
              child: ListTile(
                leading: Text(
                  name,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                dense: true,
                visualDensity: VisualDensity.compact,
                trailing: Text(
                  "\u{20B9}" + price,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.black,
                    ),
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
