import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_project/model/cart_model.dart';
import 'package:mini_project/model/categories_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:mini_project/model/food_categories_model.dart';
import 'package:mini_project/model/menu_model.dart';

class MyProvider extends ChangeNotifier{
 
//category MakananBerat   
List<Categories> MakananBeratList =[];
late Categories makananBeratCategories;

   Future<void> getMakananBeratList()async{
    List<Categories> newMakananBeratList = []; 
   QuerySnapshot value = await FirebaseFirestore.instance
        .collection('categories')
        .doc('8ND5gjvyR1O2yM6ksGXu')
        .collection('MakananBerat')
        .get();
     value.docs.forEach((element) {  
      makananBeratCategories = Categories(
        image: element.get("image"),  
        name: element.get("name"));
       newMakananBeratList.add(makananBeratCategories);
     });
     MakananBeratList = newMakananBeratList;
     notifyListeners();
   }
   List<Categories> get thowList { 
      return MakananBeratList;
    }

// Category Drink
List<Categories> drinkList =[];
late Categories drinkCategory;

   Future<void> getDrinkList()async{
     List<Categories> newdrinkList = []; 
   QuerySnapshot value = await FirebaseFirestore.instance
        .collection('categories')
        .doc('8ND5gjvyR1O2yM6ksGXu')
        .collection('Minuman')
        .get();
     value.docs.forEach((element) {  
      drinkCategory = Categories(
        image: element.get("image"), 
        name: element.get("name"));
       newdrinkList.add(drinkCategory);
     });
     drinkList = newdrinkList;
     notifyListeners();
   }
   List<Categories>get throwDrink { 
      return drinkList;
    }


// Catogory Snack
List<Categories> snackList =[];
late Categories snackCategory;

   Future<void> getsnackList()async{
     List<Categories> newsnackList = []; 
   QuerySnapshot value = await FirebaseFirestore.instance
        .collection('categories')
        .doc('8ND5gjvyR1O2yM6ksGXu')
        .collection('Snack')
        .get();
     value.docs.forEach((element) {  
      snackCategory = Categories(
        image: element.get("image"), 
        name: element.get("name"),
    );
       newsnackList.add(snackCategory);
     });
     snackList = newsnackList;
     notifyListeners();
   }
   List<Categories>get throwSnack { 
      return snackList;
    }

//Provider List Menu
    List<MenuModel> menuModelList = [];
    late MenuModel menuModel;
  Future<void> getFoodList()async{
        List<MenuModel> NewmenuModelList = [];
        QuerySnapshot value = await FirebaseFirestore.instance.collection('Menu').get();
        value.docs.forEach((element) { 
              menuModel = MenuModel(
                image: element.get('image'), 
                name: element.get('name'), 
                price: element.get('price'));
        NewmenuModelList.add(menuModel);
 });
    menuModelList = NewmenuModelList;
    notifyListeners();
}
  List<MenuModel>get throwMenuModelList{
       return  menuModelList;
 } 
//Category MakananBErat Set
 List<FoodCategoryModel> makananberatCategoriesList= [];
 late FoodCategoryModel makananberatCategoriModel;
 Future<void> getMakananBeratCatogoriesList()async{
   List<FoodCategoryModel>  newmakananberatCategoriesLis=[];
   QuerySnapshot value = await FirebaseFirestore.instance
   .collection('FoodCategories')
   .doc('ccAFFb5wm8OqrsnEgn6A')
   .collection('MakananBerat')
   .get();
   value.docs.forEach((element) {
     makananberatCategoriModel =FoodCategoryModel(
       image: element.get('image'), 
       name: element.get('name'),
        price: element.get('price'));
        newmakananberatCategoriesLis.add(makananberatCategoriModel);
   });
 
     makananberatCategoriesList=newmakananberatCategoriesLis;
     notifyListeners();
 }
 List<FoodCategoryModel>get throwMakananBeratCategoryList{
    return makananberatCategoriesList;
  }
// Category Minuman
List<FoodCategoryModel> minumanCategoriesList= [];
 late FoodCategoryModel minumanCategoriModel;
 Future<void> getminumanCatogoriesList()async{
   List<FoodCategoryModel>  newMinumanCategoriesLis=[];
   QuerySnapshot value = await FirebaseFirestore.instance
   .collection('FoodCategories')
   .doc('ccAFFb5wm8OqrsnEgn6A')
   .collection('Minuman')
   .get();
   value.docs.forEach((element) {
     minumanCategoriModel =FoodCategoryModel(
       image: element.get('image'), 
       name: element.get('name'),
        price: element.get('price'));
        newMinumanCategoriesLis.add(minumanCategoriModel);
   });
     minumanCategoriesList=newMinumanCategoriesLis;
     notifyListeners();
 }
 List<FoodCategoryModel>get throwMinumanCategoryList{
    return minumanCategoriesList;
  }

//Category Snack
List<FoodCategoryModel> snackCategoriesList= [];
 late FoodCategoryModel snackCategoriModel;
 Future<void> getSnackCatogoriesList()async{
   List<FoodCategoryModel>  newSnackCategoriesLis=[];
   QuerySnapshot value = await FirebaseFirestore.instance
   .collection('FoodCategories')
   .doc('ccAFFb5wm8OqrsnEgn6A')
   .collection('Snack')
   .get();
   value.docs.forEach((element) {
     snackCategoriModel =FoodCategoryModel(
       image: element.get('image'), 
       name: element.get('name'),
        price: element.get('price'));
        newSnackCategoriesLis.add(snackCategoriModel);
   });
     snackCategoriesList=newSnackCategoriesLis;
     notifyListeners();
 }
 List<FoodCategoryModel>get throwSnackCategoryList{
    return snackCategoriesList;
  }
//add to Cart
List<CartModel> cartList=[];
List<CartModel> newCartList=[];
late CartModel cartModel;
void addTocart({
  required String image,
  required String name,
  required int price,
  required int quantity,
  required String keterangan,
  }){
    cartModel = CartModel(
      keterangan: keterangan,
      image: image, 
      name: name, 
      price: price, 
      quantity: quantity);
  newCartList.add(cartModel);
  cartList = newCartList;
}
  get throwCartList{
    return cartList;
  }
 int tottalprice(){
    int total =0;
    cartList.forEach((element) {
      total += element.price*element.quantity;
    });
    return total;
 }
 late int deleteIndex;
 void getDeleteIndex(int index){
    deleteIndex = index;
 }
 void delete(){  
   cartList.removeAt(deleteIndex);
   notifyListeners();
 }
 void Deleteall(){
    cartList.removeWhere((element) => true);
      notifyListeners();
  }
 }
 



