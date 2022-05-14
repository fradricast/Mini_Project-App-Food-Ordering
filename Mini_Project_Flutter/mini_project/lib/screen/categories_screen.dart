import 'package:flutter/material.dart';
import 'package:mini_project/model/button_Category.dart';
import 'package:mini_project/model/provider/provider.dart';
import 'package:mini_project/screen/home_screen.dart';
import 'package:provider/provider.dart';
 class kategoriScreen extends StatefulWidget {  
 
   @override
   State<kategoriScreen> createState() => _kategoriScreenState();
 }
 
 class _kategoriScreenState extends State<kategoriScreen> {
   late MyProvider myprovider;
   
   @override
   Widget build(BuildContext context) {
    MyProvider myprovider = Provider.of<MyProvider>(context,listen : false); 
    myprovider = Provider.of<MyProvider>(context);
      return Scaffold(
        backgroundColor: Color.fromARGB(245, 255, 176, 6),
        
        appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back) , onPressed: (){
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);
        },),
        ),
        body: Container(
        child: Column(
          children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 600,
                child: GridView.count(
                  shrinkWrap: false,
                  primary: false, 
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 20, 
                  mainAxisSpacing: 20 ,
                  children: myprovider.throwMakananBeratCategoryList.map((e) => buttonContainer(
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