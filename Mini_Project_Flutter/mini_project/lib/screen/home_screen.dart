import 'package:flutter/material.dart';
import 'package:mini_project/model/categories_model.dart';
import 'package:mini_project/model/food_categories_model.dart';
import 'package:mini_project/model/button_Category.dart';
import 'package:mini_project/model/menu_model.dart';
import 'package:mini_project/model/provider/provider.dart';
import 'package:mini_project/screen/cartPage_screen.dart';
import 'package:mini_project/screen/categories_screen.dart';
import 'package:mini_project/screen/login_screen.dart';
import 'package:mini_project/screen/minuman_screen.dart';
import 'package:mini_project/screen/snack_screen.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = new TextEditingController();
  late MyProvider myprovider;


  Widget categoriesContainer({required String image , required String name}){
    return  Column(
              children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => kategoriScreen()), (route) => false);
                    },
                    child: Container(
                       margin: EdgeInsets.only(left : 20),
                        height:80,
                        width: 80,
                        decoration:BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(image)),
                        color: Color.fromARGB(255, 243, 243, 49),
                        borderRadius: BorderRadius.circular(8)
                      ),),
                  ),
                  SizedBox(height: 5,),
                  Text(name, 
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold, 
                    color: Colors.black
                    ),),
                ], );
  }
  Widget minumanContainer({required String image , required String name}){
    return  Column(
              children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MinumanScreen()), (route) => false);
                    },
                    child: Container(
                       margin: EdgeInsets.only(left : 20),
                        height:80,
                        width: 80,
                        decoration:BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(image)),
                        color: Color.fromARGB(255, 243, 243, 49),
                        borderRadius: BorderRadius.circular(8)
                      ),),
                  ),
                  SizedBox(height: 5,),
                  Text(name, 
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold, 
                    color: Colors.black
                    ),),
                ], );
  } 
  Widget SnackContainer({required String image , required String name}){
    return  Column(
              children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SnackScreen()), (route) => false);
                    },
                    child: Container(
                       margin: EdgeInsets.only(left : 20),
                        height:80,
                        width: 80,
                        decoration:BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(image)),
                        color: Color.fromARGB(255, 243, 243, 49),
                        borderRadius: BorderRadius.circular(8)
                      ),),
                  ),
                  SizedBox(height: 5,),
                  Text(name, 
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold, 
                    color: Colors.black
                    ),),
                ], );
  }
   Widget drawerItem({required String title ,  required IconData icon }){
     return ListTile(
       leading: Icon(
         icon, 
         color: Colors.black,),
       title: Text(title ,
       style: TextStyle(
         fontSize: 20,
         color: Colors.black
       ), ),
     );
   }

// //widget Category
  Widget MakananBerat(){
    return Row(
      children: 
      myprovider.thowList.map((e) => categoriesContainer(
        image: e.image, 
        name: e.name,
        )).toList());
  }
   Widget Minuman(){
    return Row(
      children: 
       myprovider.throwDrink.map((e) => minumanContainer(
        image: e.image, 
        name: e.name,
       )).toList());
  }
     Widget Snack(){
    return Row(
      children: 
      myprovider.throwSnack.map((e) => SnackContainer(
        image: e.image, 
        name: e.name,
        )).toList());
  }
    @override
  void initState() {
    MyProvider myprovider = Provider.of<MyProvider>(context, listen:  false);
     myprovider.getMakananBeratList();
    //Catogry Minuman
    myprovider.getDrinkList();
    //Catogry Snack
    myprovider.getsnackList();
    //ListMenu
    myprovider.getFoodList();
   //CAtegori Makanan Berat Set
    myprovider.getMakananBeratCatogoriesList();
   //Categori Minuman Set 
   myprovider.getminumanCatogoriesList();
   //Categori Snack Set
   myprovider.getSnackCatogoriesList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   myprovider = Provider.of<MyProvider>(context);
    
     
 
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 255, 176, 6),
       drawer: Drawer(
        child: Container(
          color: Color.fromARGB(245, 255, 176, 6),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                   child: Container(
                    child: Center(
                        child: Image.asset("assets/logo/logo.png",
                            fit: BoxFit.contain,)
                       )
                       ),
                     ),
                GestureDetector(
                  onTap:(){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> CartPage()), (route) => false);
                  },
                  child: drawerItem(icon: Icons.add_shopping_cart, title: "Cart")),
                Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Text(
                    "Comunicate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ), 
      ),
      
      appBar: AppBar(
        title: Text("Daftar Menu",
        style: TextStyle(
          color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ActionChip(
              label: Icon(Icons.logout,size: 25, color: Colors.black,),
              backgroundColor:Colors.yellowAccent, 
              onPressed: (){
                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>loginScreen()), (route) => false);
              },
            ),
          )
        ],
        backgroundColor: Colors.yellowAccent,
        ),
      body: Container(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  // child: searchField,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    MakananBerat(),
                    Minuman(),
                    Snack(),
                  ]
                  ),
                ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 450,
                child: GridView.count(
                  shrinkWrap: false,
                  primary: false, 
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20 ,
                  children: myprovider.throwMenuModelList.map((e) => buttonContainer(
                    image: e.image, 
                    price: e.price, 
                    name: e.name,)
                  ).toList(),
                  ),
              )
            ],
        ),
      ),
            
    );
  }
}
