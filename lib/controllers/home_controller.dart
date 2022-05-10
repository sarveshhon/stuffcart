import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:stuffcart/model/food_model.dart';

class HomeController extends GetxController {
  var myFoodList = <FoodModel>[].obs;

  var myHomeStyleList = <FoodModel>[].obs;
  var myChaatList = <FoodModel>[].obs;
  var myChickenList = <FoodModel>[].obs;
  var myPizzaList = <FoodModel>[].obs;
  var myBurgerList = <FoodModel>[].obs;
  var myMomosList = <FoodModel>[].obs;
  var myFriesList = <FoodModel>[].obs;


  @override
  void onInit() {
    super.onInit();
    fetchFoodList();
    fetchHomeStyleList();
    fetchChaatList();
    fetchChickenList();
    fetchPizzaList();
    fetchBurgerList();
    fetchMomosList();
    fetchFriesList();
  }

  late FoodModel foodModel;

  void fetchFoodList() async {
    List<FoodModel> newFoodList = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("Food").get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
          name: data['name'], image: data['image'], price: data['price']);
      newFoodList.add(foodModel);
    }
    myFoodList.value = newFoodList;
  }

  void fetchHomeStyleList() async {
    List<FoodModel> newHomeStyleList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Home Style")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newHomeStyleList.add(foodModel);
    }
    myHomeStyleList.value = newHomeStyleList;
  }

  void fetchChaatList() async {
    List<FoodModel> newChaatList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Chaat")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newChaatList.add(foodModel);
    }
    myChaatList.value = newChaatList;
  }

  void fetchChickenList() async {
    List<FoodModel> newChickenList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Chicken")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newChickenList.add(foodModel);
    }
    myChickenList.value = newChickenList;
  }

  void fetchPizzaList() async {
    List<FoodModel> newPizzaList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Pizza")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newPizzaList.add(foodModel);
    }
    myPizzaList.value = newPizzaList;
  }

  void fetchBurgerList() async {
    List<FoodModel> newBurgerList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Burger")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newBurgerList.add(foodModel);
    }
    myBurgerList.value = newBurgerList;
  }

  void fetchMomosList() async {
    List<FoodModel> newMomosList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Momos")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newMomosList.add(foodModel);
    }
    myMomosList.value = newMomosList;
  }

  void fetchFriesList() async {
    List<FoodModel> newFriesList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("FoodCategories")
        .doc("BssxP7ZJn1VgX98okKL7")
        .collection("Fries")
        .get();

    for (var element in querySnapshot.docs) {
      Map data = element.data() as Map;
      foodModel = FoodModel(
        image: data['image'],
        name: data['name'],
        price: data['price'],
      );
      newFriesList.add(foodModel);
    }
    myFriesList.value = newFriesList;
  }
}
