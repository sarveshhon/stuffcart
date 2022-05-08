import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:stuffcart/model/categories_data.dart';

class MyProvider extends ChangeNotifier {
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
  
}
