import 'package:flutter/material.dart';
import 'package:mini_project/model/provider/provider.dart';
import 'package:mini_project/screen/cartPage_screen.dart';
import 'package:mini_project/screen/home_screen.dart';
import 'package:provider/provider.dart';
class DetailPageScreen extends StatefulWidget {
  final String image;
  final String name;
  final int price;
 DetailPageScreen({required this.image,required this.name,required this.price});

  @override
  State<DetailPageScreen> createState() => _DetailPageScreenState();
}

class _DetailPageScreenState extends State<DetailPageScreen> {
  final TextEditingController keteranganContoroller = new TextEditingController();
  int quantity=1;
  @override
  Widget build(BuildContext context) {
    MyProvider provider = Provider.of<MyProvider>(context);
    final keteranganField = TextFormField(
      autofocus: false,
      controller: keteranganContoroller,
      onSaved: (value){
        keteranganContoroller.text=value!;
      },
      decoration : InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 234, 234, 124),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Ketarangan",
        labelText: "Keterangan",
        border: OutlineInputBorder( 
          borderRadius: BorderRadius.circular(30),
        )
      ),
      textInputAction: TextInputAction.done,
     );

    return Scaffold(
      backgroundColor: Color.fromARGB(245, 255, 176, 6),
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Detail Makanan'),
        backgroundColor: Colors.yellowAccent,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),
        onPressed: (){
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);
        },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: CircleAvatar(
                radius: 110,
                backgroundImage: NetworkImage(widget.image)
              ),
            )
            ),
           Expanded(
             flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                   topRight: Radius.circular(10)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,style: TextStyle(fontSize: 40,color: Colors.black ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                quantity--;
                              });
                            },
                            child: Container(
                              height:40,
                              width: 40,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10)
                             ),
                             child: Icon(Icons.remove, color: Colors.black,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('$quantity', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap :(){
                              setState(() {
                                quantity++;
                              });
                            } ,
                            child: Container(
                              height:40,
                              width: 40,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10)
                             ),
                             child: Icon(Icons.add, color: Colors.black,),
                            ),
                          ),
                        ],
                      ),
                      Text('Rp.${widget.price * quantity}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30),),
                    ],
                  ),
                   keteranganField,
                  Container(
                    height: 55,
                    width: double.infinity,
                    child: MaterialButton(
                      color: Color.fromARGB(255, 243, 243, 49),
                      onPressed: (){
                          provider.addTocart(
                            keterangan: keteranganContoroller.text,
                            image: widget.image, 
                            name: widget.name, 
                            price: widget.price, 
                            quantity:  quantity);
                          Navigator.of(context).push(
                              PageRouteBuilder(
                             pageBuilder: ((context, animation, secondaryAnimation){
                               return CartPage();
                               }),
                            transitionsBuilder: (context, animation, secondaryAnimation, child){
                              final tween = Tween(begin: 0.0 , end: 1.0);
                              return ScaleTransition(
                                scale: animation.drive(tween),
                                child: child
                                ,);
                            }
                          ));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, color: Colors.black,),
                          SizedBox(width: 10,),
                          Text("Add To Cart",style: TextStyle(fontSize: 20, color: Colors.black),)
                          ],
                      ),
                      ),
                  )
                ],
              ) ,
            )
            ), 
        ],
      ),
    );
  }
}