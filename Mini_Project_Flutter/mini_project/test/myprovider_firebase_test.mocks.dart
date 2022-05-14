// Mocks generated by Mockito 5.1.0 from annotations
// in mini_project/test/myprovider_firebase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;
import 'dart:ui' as _i8;

import 'package:mini_project/model/cart_model.dart' as _i5;
import 'package:mini_project/model/categories_model.dart' as _i2;
import 'package:mini_project/model/food_categories_model.dart' as _i4;
import 'package:mini_project/model/menu_model.dart' as _i3;
import 'package:mini_project/model/provider/provider.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeCategories_0 extends _i1.Fake implements _i2.Categories {}

class _FakeMenuModel_1 extends _i1.Fake implements _i3.MenuModel {}

class _FakeFoodCategoryModel_2 extends _i1.Fake
    implements _i4.FoodCategoryModel {}

class _FakeCartModel_3 extends _i1.Fake implements _i5.CartModel {}

/// A class which mocks [MyProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockMyProvider extends _i1.Mock implements _i6.MyProvider {
  MockMyProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i2.Categories> get MakananBeratList =>
      (super.noSuchMethod(Invocation.getter(#MakananBeratList),
          returnValue: <_i2.Categories>[]) as List<_i2.Categories>);
  @override
  set MakananBeratList(List<_i2.Categories>? _MakananBeratList) => super
      .noSuchMethod(Invocation.setter(#MakananBeratList, _MakananBeratList),
          returnValueForMissingStub: null);
  @override
  _i2.Categories get makananBeratCategories =>
      (super.noSuchMethod(Invocation.getter(#makananBeratCategories),
          returnValue: _FakeCategories_0()) as _i2.Categories);
  @override
  set makananBeratCategories(_i2.Categories? _makananBeratCategories) =>
      super.noSuchMethod(
          Invocation.setter(#makananBeratCategories, _makananBeratCategories),
          returnValueForMissingStub: null);
  @override
  List<_i2.Categories> get drinkList =>
      (super.noSuchMethod(Invocation.getter(#drinkList),
          returnValue: <_i2.Categories>[]) as List<_i2.Categories>);
  @override
  set drinkList(List<_i2.Categories>? _drinkList) =>
      super.noSuchMethod(Invocation.setter(#drinkList, _drinkList),
          returnValueForMissingStub: null);
  @override
  _i2.Categories get drinkCategory =>
      (super.noSuchMethod(Invocation.getter(#drinkCategory),
          returnValue: _FakeCategories_0()) as _i2.Categories);
  @override
  set drinkCategory(_i2.Categories? _drinkCategory) =>
      super.noSuchMethod(Invocation.setter(#drinkCategory, _drinkCategory),
          returnValueForMissingStub: null);
  @override
  List<_i2.Categories> get snackList =>
      (super.noSuchMethod(Invocation.getter(#snackList),
          returnValue: <_i2.Categories>[]) as List<_i2.Categories>);
  @override
  set snackList(List<_i2.Categories>? _snackList) =>
      super.noSuchMethod(Invocation.setter(#snackList, _snackList),
          returnValueForMissingStub: null);
  @override
  _i2.Categories get snackCategory =>
      (super.noSuchMethod(Invocation.getter(#snackCategory),
          returnValue: _FakeCategories_0()) as _i2.Categories);
  @override
  set snackCategory(_i2.Categories? _snackCategory) =>
      super.noSuchMethod(Invocation.setter(#snackCategory, _snackCategory),
          returnValueForMissingStub: null);
  @override
  List<_i3.MenuModel> get menuModelList =>
      (super.noSuchMethod(Invocation.getter(#menuModelList),
          returnValue: <_i3.MenuModel>[]) as List<_i3.MenuModel>);
  @override
  set menuModelList(List<_i3.MenuModel>? _menuModelList) =>
      super.noSuchMethod(Invocation.setter(#menuModelList, _menuModelList),
          returnValueForMissingStub: null);
  @override
  _i3.MenuModel get menuModel =>
      (super.noSuchMethod(Invocation.getter(#menuModel),
          returnValue: _FakeMenuModel_1()) as _i3.MenuModel);
  @override
  set menuModel(_i3.MenuModel? _menuModel) =>
      super.noSuchMethod(Invocation.setter(#menuModel, _menuModel),
          returnValueForMissingStub: null);
  @override
  List<_i4.FoodCategoryModel> get makananberatCategoriesList =>
      (super.noSuchMethod(Invocation.getter(#makananberatCategoriesList),
              returnValue: <_i4.FoodCategoryModel>[])
          as List<_i4.FoodCategoryModel>);
  @override
  set makananberatCategoriesList(
          List<_i4.FoodCategoryModel>? _makananberatCategoriesList) =>
      super.noSuchMethod(
          Invocation.setter(
              #makananberatCategoriesList, _makananberatCategoriesList),
          returnValueForMissingStub: null);
  @override
  _i4.FoodCategoryModel get makananberatCategoriModel =>
      (super.noSuchMethod(Invocation.getter(#makananberatCategoriModel),
          returnValue: _FakeFoodCategoryModel_2()) as _i4.FoodCategoryModel);
  @override
  set makananberatCategoriModel(
          _i4.FoodCategoryModel? _makananberatCategoriModel) =>
      super.noSuchMethod(
          Invocation.setter(
              #makananberatCategoriModel, _makananberatCategoriModel),
          returnValueForMissingStub: null);
  @override
  List<_i4.FoodCategoryModel> get minumanCategoriesList => (super.noSuchMethod(
      Invocation.getter(#minumanCategoriesList),
      returnValue: <_i4.FoodCategoryModel>[]) as List<_i4.FoodCategoryModel>);
  @override
  set minumanCategoriesList(
          List<_i4.FoodCategoryModel>? _minumanCategoriesList) =>
      super.noSuchMethod(
          Invocation.setter(#minumanCategoriesList, _minumanCategoriesList),
          returnValueForMissingStub: null);
  @override
  _i4.FoodCategoryModel get minumanCategoriModel =>
      (super.noSuchMethod(Invocation.getter(#minumanCategoriModel),
          returnValue: _FakeFoodCategoryModel_2()) as _i4.FoodCategoryModel);
  @override
  set minumanCategoriModel(_i4.FoodCategoryModel? _minumanCategoriModel) =>
      super.noSuchMethod(
          Invocation.setter(#minumanCategoriModel, _minumanCategoriModel),
          returnValueForMissingStub: null);
  @override
  List<_i4.FoodCategoryModel> get snackCategoriesList => (super.noSuchMethod(
      Invocation.getter(#snackCategoriesList),
      returnValue: <_i4.FoodCategoryModel>[]) as List<_i4.FoodCategoryModel>);
  @override
  set snackCategoriesList(List<_i4.FoodCategoryModel>? _snackCategoriesList) =>
      super.noSuchMethod(
          Invocation.setter(#snackCategoriesList, _snackCategoriesList),
          returnValueForMissingStub: null);
  @override
  _i4.FoodCategoryModel get snackCategoriModel =>
      (super.noSuchMethod(Invocation.getter(#snackCategoriModel),
          returnValue: _FakeFoodCategoryModel_2()) as _i4.FoodCategoryModel);
  @override
  set snackCategoriModel(_i4.FoodCategoryModel? _snackCategoriModel) => super
      .noSuchMethod(Invocation.setter(#snackCategoriModel, _snackCategoriModel),
          returnValueForMissingStub: null);
  @override
  List<_i5.CartModel> get cartList =>
      (super.noSuchMethod(Invocation.getter(#cartList),
          returnValue: <_i5.CartModel>[]) as List<_i5.CartModel>);
  @override
  set cartList(List<_i5.CartModel>? _cartList) =>
      super.noSuchMethod(Invocation.setter(#cartList, _cartList),
          returnValueForMissingStub: null);
  @override
  List<_i5.CartModel> get newCartList =>
      (super.noSuchMethod(Invocation.getter(#newCartList),
          returnValue: <_i5.CartModel>[]) as List<_i5.CartModel>);
  @override
  set newCartList(List<_i5.CartModel>? _newCartList) =>
      super.noSuchMethod(Invocation.setter(#newCartList, _newCartList),
          returnValueForMissingStub: null);
  @override
  _i5.CartModel get cartModel =>
      (super.noSuchMethod(Invocation.getter(#cartModel),
          returnValue: _FakeCartModel_3()) as _i5.CartModel);
  @override
  set cartModel(_i5.CartModel? _cartModel) =>
      super.noSuchMethod(Invocation.setter(#cartModel, _cartModel),
          returnValueForMissingStub: null);
  @override
  int get deleteIndex =>
      (super.noSuchMethod(Invocation.getter(#deleteIndex), returnValue: 0)
          as int);
  @override
  set deleteIndex(int? _deleteIndex) =>
      super.noSuchMethod(Invocation.setter(#deleteIndex, _deleteIndex),
          returnValueForMissingStub: null);
  @override
  List<_i2.Categories> get thowList =>
      (super.noSuchMethod(Invocation.getter(#thowList),
          returnValue: <_i2.Categories>[]) as List<_i2.Categories>);
  @override
  List<_i2.Categories> get throwDrink =>
      (super.noSuchMethod(Invocation.getter(#throwDrink),
          returnValue: <_i2.Categories>[]) as List<_i2.Categories>);
  @override
  List<_i2.Categories> get throwSnack =>
      (super.noSuchMethod(Invocation.getter(#throwSnack),
          returnValue: <_i2.Categories>[]) as List<_i2.Categories>);
  @override
  List<_i3.MenuModel> get throwMenuModelList =>
      (super.noSuchMethod(Invocation.getter(#throwMenuModelList),
          returnValue: <_i3.MenuModel>[]) as List<_i3.MenuModel>);
  @override
  List<_i4.FoodCategoryModel> get throwMakananBeratCategoryList =>
      (super.noSuchMethod(Invocation.getter(#throwMakananBeratCategoryList),
              returnValue: <_i4.FoodCategoryModel>[])
          as List<_i4.FoodCategoryModel>);
  @override
  List<_i4.FoodCategoryModel> get throwMinumanCategoryList =>
      (super.noSuchMethod(Invocation.getter(#throwMinumanCategoryList),
              returnValue: <_i4.FoodCategoryModel>[])
          as List<_i4.FoodCategoryModel>);
  @override
  List<_i4.FoodCategoryModel> get throwSnackCategoryList => (super.noSuchMethod(
      Invocation.getter(#throwSnackCategoryList),
      returnValue: <_i4.FoodCategoryModel>[]) as List<_i4.FoodCategoryModel>);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i7.Future<void> getMakananBeratList() =>
      (super.noSuchMethod(Invocation.method(#getMakananBeratList, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> getDrinkList() =>
      (super.noSuchMethod(Invocation.method(#getDrinkList, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> getsnackList() =>
      (super.noSuchMethod(Invocation.method(#getsnackList, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> getFoodList() =>
      (super.noSuchMethod(Invocation.method(#getFoodList, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> getMakananBeratCatogoriesList() =>
      (super.noSuchMethod(Invocation.method(#getMakananBeratCatogoriesList, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> getminumanCatogoriesList() =>
      (super.noSuchMethod(Invocation.method(#getminumanCatogoriesList, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> getSnackCatogoriesList() =>
      (super.noSuchMethod(Invocation.method(#getSnackCatogoriesList, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i7.Future<void>);
  @override
  void addTocart(
          {String? image,
          String? name,
          int? price,
          int? quantity,
          String? keterangan}) =>
      super.noSuchMethod(
          Invocation.method(#addTocart, [], {
            #image: image,
            #name: name,
            #price: price,
            #quantity: quantity,
            #keterangan: keterangan
          }),
          returnValueForMissingStub: null);
  @override
  int tottalprice() =>
      (super.noSuchMethod(Invocation.method(#tottalprice, []), returnValue: 0)
          as int);
  @override
  void getDeleteIndex(int? index) =>
      super.noSuchMethod(Invocation.method(#getDeleteIndex, [index]),
          returnValueForMissingStub: null);
  @override
  void delete() => super.noSuchMethod(Invocation.method(#delete, []),
      returnValueForMissingStub: null);
  @override
  void addListener(_i8.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i8.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
