import 'package:get/get.dart';
import 'package:stuffcart/model/cart_model.dart';

class CartController extends GetxController {
  var cartItems = <CartModel>[].obs;

  int get count => cartItems.length;
  double get totalAmount => cartItems.fold(0, (sum, item) => sum + item.price);

  void addToCart(CartModel item) {
    cartItems.add(item);
  }

  void removeFromCart(int index) {
    cartItems.removeAt(index);
  }

  void removeAll() {
    cartItems.clear();
  }
}
