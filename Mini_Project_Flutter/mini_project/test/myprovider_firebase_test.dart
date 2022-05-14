import 'package:mini_project/model/cart_model.dart';
import 'package:mini_project/model/categories_model.dart';
import 'package:mini_project/model/food_categories_model.dart';
import 'package:mini_project/model/menu_model.dart';
import 'package:mini_project/model/provider/provider.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'myprovider_firebase_test.mocks.dart';
@GenerateMocks([MyProvider])
void main(){
  group('MyProvider', (){
    MyProvider myProvider = MockMyProvider();
    test('Test all Menu', ()async{
      when(myProvider.getMakananBeratCatogoriesList()).thenAnswer((_) async=><FoodCategoryModel>[
        FoodCategoryModel(image: 'gambar', name: 'Seafood', price: 20000),
      ],);
    });
     test('Test Categories Makanan Berat List', ()async{
      when(myProvider.getMakananBeratList()).thenAnswer((_) async=><Categories>[
        Categories(image: 'gambar', name: 'Seafood'),
      ],);
    }); 
     test('Test Categories Minuman List', ()async{
      when(myProvider.getDrinkList()).thenAnswer((_) async=><Categories>[
        Categories(image: 'gambar', name: 'Seafood'),
      ],);
    }); 
     test('Test Categories Snack List', ()async{
      when(myProvider.getsnackList()).thenAnswer((_) async=><Categories>[
        Categories(image: 'gambar', name: 'Seafood'),
      ],);
    }); 
     test('Test Menu Keranjang ', ()async{
      when(myProvider.throwCartList).thenAnswer((_) async=><CartModel>[
        CartModel(image: 'gambar', keterangan: 'Tidak Pake es', name: 'Alpukat ', price: 20000, quantity: 2),
      ],);
    }); 
  });
}