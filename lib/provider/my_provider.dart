import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:stuffcart/model/cart_model.dart';
import 'package:stuffcart/model/categories_model.dart';
import 'package:stuffcart/model/food_model.dart';

class MyProvider extends ChangeNotifier {
  ////////////////////////        Categories        //////////////////////////////
  ///////////////////////         Categories        //////////////////////////////
  ///////////////////////         Categories        //////////////////////////////

  List<CategoriesModel> homeStyleList = [];
  late CategoriesModel homeStyleModel;
  Future<void> getHomeStyleCategories() async {
    List<CategoriesModel> newHomeStyleList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Categories")
        .doc("l87uNOLcchRawj4H7SYS")
        .collection("Home Style")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      homeStyleModel =
          CategoriesModel(image: data['image'], name: data['name']);
    }
    newHomeStyleList.add(homeStyleModel);
    homeStyleList = newHomeStyleList;
  }

  get throwHomeStyleList {
    return homeStyleList;
  }

  /////////// Category 2 ///////////////

  List<CategoriesModel> chaatList = [];
  late CategoriesModel chaatModel;
  Future<void> getChaatCategories() async {
    List<CategoriesModel> newChaatList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Categories")
        .doc("l87uNOLcchRawj4H7SYS")
        .collection("Chaat")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      chaatModel = CategoriesModel(image: data['image'], name: data['name']);
    }
    newChaatList.add(chaatModel);
    chaatList = newChaatList;
  }

  get throwChaatList {
    return chaatList;
  }

  /////////// Category 3 ///////////////

  List<CategoriesModel> chickenList = [];
  late CategoriesModel chickenModel;
  Future<void> getChickenCategories() async {
    List<CategoriesModel> newChickenList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Categories")
        .doc("l87uNOLcchRawj4H7SYS")
        .collection("Chicken")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      chickenModel = CategoriesModel(image: data['image'], name: data['name']);
    }
    newChickenList.add(chickenModel);
    chickenList = newChickenList;
  }

  get throwChickenList {
    return chickenList;
  }

  //////////////// Category 4 /////////////////////

  List<CategoriesModel> pizzaList = [];
  late CategoriesModel pizzaModel;
  Future<void> getPizzaCategories() async {
    List<CategoriesModel> newPizzaList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Categories")
        .doc("l87uNOLcchRawj4H7SYS")
        .collection("Pizza")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      pizzaModel = CategoriesModel(image: data['image'], name: data['name']);
    }
    newPizzaList.add(pizzaModel);
    pizzaList = newPizzaList;
  }

  get throwPizzaList {
    return pizzaList;
  }

  ///////////////////// Category 5 ////////////////////////

  List<CategoriesModel> burgerList = [];
  late CategoriesModel burgerModel;
  Future<void> getBurgerCategories() async {
    List<CategoriesModel> newBurgerList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Categories")
        .doc("l87uNOLcchRawj4H7SYS")
        .collection("Burger")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      burgerModel = CategoriesModel(image: data['image'], name: data['name']);
    }
    newBurgerList.add(burgerModel);
    burgerList = newBurgerList;
  }

  get throwBurgerList {
    return burgerList;
  }

  //////////////////////// Category 6 //////////////////////////

  List<CategoriesModel> momosList = [];
  late CategoriesModel momosModel;
  Future<void> getMomosCategories() async {
    List<CategoriesModel> newMomosList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Categories")
        .doc("l87uNOLcchRawj4H7SYS")
        .collection("Momos")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      momosModel = CategoriesModel(image: data['image'], name: data['name']);
    }
    newMomosList.add(momosModel);
    momosList = newMomosList;
  }

  get throwMomosList {
    return momosList;
  }

  //////////////////////// Category 7 //////////////////////////

  List<CategoriesModel> friesList = [];
  late CategoriesModel friesModel;
  Future<void> getFriesCategories() async {
    List<CategoriesModel> newFriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Categories")
        .doc("l87uNOLcchRawj4H7SYS")
        .collection("Fries")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      friesModel = CategoriesModel(image: data['image'], name: data['name']);
    }
    newFriesList.add(friesModel);
    friesList = newFriesList;
  }

  get throwFriesList {
    return friesList;
  }

  ////////////////////////      Single Categories        //////////////////////////////
  ////////////////////////      Single Categories        //////////////////////////////
  ////////////////////////      Single Categories        //////////////////////////////

  ////////////////////////       Single Food Items       //////////////////////////////

  List<FoodModel> foodList = [];
  late FoodModel foodModel;
  Future<void> getFoodList() async {
    List<FoodModel> newFoodList = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("Food").get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
          name: data['name'], image: data['image'], price: data['price']);
      newFoodList.add(foodModel);
    }
    foodList = newFoodList;
  }

  get throwFoodList {
    return foodList;
  }
  //////////////////////////  Single Category Food ///////////////////////

  List<FoodModel> homeStyleFoodList = [];
  late FoodModel homeStyleFoodModel;
  Future<void> getHomeStyleFoodCategories() async {
    List<FoodModel> newHomeStyleFoodList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Home Style")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      homeStyleFoodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newHomeStyleFoodList.add(homeStyleFoodModel);
    }
    homeStyleFoodList = newHomeStyleFoodList;
  }

  get throwHomeStyleFoodList {
    return homeStyleFoodList;
  }

  List<FoodModel> chaatFoodList = [];
  late FoodModel chaatFoodModel;
  Future<void> getChaatFoodCategories() async {
    List<FoodModel> newChaatFoodList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Chaat")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      chaatFoodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newChaatFoodList.add(chaatFoodModel);
    }
    chaatFoodList = newChaatFoodList;
  }

  get throwChaatFoodList {
    return chaatFoodList;
  }

  List<FoodModel> chickenFoodList = [];
  late FoodModel chickenFoodModel;
  Future<void> getChickenFoodCategories() async {
    List<FoodModel> newChickenFoodList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Chicken")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      chickenFoodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newChickenFoodList.add(chickenFoodModel);
    }
    chickenFoodList = newChickenFoodList;
  }

  get throwChickenFoodList {
    return chickenFoodList;
  }

  List<FoodModel> pizzaFoodList = [];
  late FoodModel pizzaFoodModel;
  Future<void> getPizzaFoodCategories() async {
    List<FoodModel> newPizzaFoodList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Pizza")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      pizzaFoodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newPizzaFoodList.add(pizzaFoodModel);
    }
    pizzaFoodList = newPizzaFoodList;
  }

  get throwPizzaFoodList {
    return pizzaFoodList;
  }

  List<FoodModel> burgerFoodList = [];
  late FoodModel burgerFoodModel;
  Future<void> getBurgerFoodCategories() async {
    List<FoodModel> newBurgerFoodList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Burger")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      burgerFoodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newBurgerFoodList.add(burgerFoodModel);
    }
    burgerFoodList = newBurgerFoodList;
  }

  get throwBurgerFoodList {
    return burgerFoodList;
  }

  List<FoodModel> momosFoodList = [];
  late FoodModel momosFoodModel;
  Future<void> getMomosFoodCategories() async {
    List<FoodModel> newMomosFoodList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Momos")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      momosFoodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newMomosFoodList.add(momosFoodModel);
    }
    momosFoodList = newMomosFoodList;
  }

  get throwMomosFoodList {
    return momosFoodList;
  }

  List<FoodModel> friesFoodList = [];
  late FoodModel friesFoodModel;
  Future<void> getFriesFoodCategories() async {
    List<FoodModel> newFriesFoodList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Fries")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      friesFoodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newFriesFoodList.add(friesFoodModel);
    }
    friesFoodList = newFriesFoodList;
  }

  get throwFriesFoodList {
    return friesFoodList;
  }

  List<CartModel> cartList = [];
  List<CartModel> newCartList = [];
  late CartModel cartModel;
  void addToCart(
      {required String name,
      required String image,
      required int price,
      required int quantity}) {
    cartModel = CartModel(
      name: name,
      image: image,
      price: price,
      quantity: quantity,
    );
    newCartList.add(cartModel);
    cartList = newCartList;
    print(cartList[0].name);
  }

  get throwCartList {
    return cartList;
  }

  int totalPrice() {
    int total = 0;
    cartList.forEach((element) {
      total += element.price * element.quantity;
    });
    return total;
  }

  int? deleteIndex;
  void getDeletedIndex(int index) {
    deleteIndex = index;
  }

  void delete() {
    cartList.removeAt(deleteIndex!);
    notifyListeners();
  }

  // List<FoodModel> homeGeneralFoodList = [];
  // late FoodModel homeGeneralFoodModel;
  // Future<void> getGeneralFoodCategories({required String name}) async {
  //   List<FoodModel> newGeneralFoodList = [];
  //   QuerySnapshot querySnapshot = await FirebaseFirestore.instance
  //       .collection("FoodCategories")
  //       .doc("BssxP7ZJn1VgX98okKL7")
  //       .collection(name)
  //       .get();

  //   for (var element in querySnapshot.docs) {
  //     Map data = element.data() as Map;
  //     homeGeneralFoodModel = FoodModel(
  //       image: data['image'],
  //       name: data['name'],
  //       price: data['price'],
  //     );
  //     newGeneralFoodList.add(homeGeneralFoodModel);
  //   }
  //   homeGeneralFoodList.clear();
  //   homeGeneralFoodList = newGeneralFoodList;
  // }

  // get throwGeneralList {
  //   return homeGeneralFoodList;
  // }
}
