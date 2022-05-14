import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mini_project/model/provider/provider.dart';
import 'package:mini_project/screen/home_screen.dart';
import 'package:provider/provider.dart';
class CartPage extends StatefulWidget {

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
   @override
  Widget cartItem({
    
    required String image,
    required String name, 
    required int price,
    required int quantity,
    required String keterangan,
    required Function onTap
  }) {
    return Row(
      children: [
        Container(
          width: 170,
          height: 170,
          child: CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    keterangan,
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Rp.$price",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "$quantity",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.close, color: Colors.black),
              onPressed:(){onTap();},
            )
          ],
        )),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    MyProvider myprovider = Provider.of<MyProvider>(context);
    int total = myprovider.tottalprice();
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20,left: 20 , right: 20), 
        padding: EdgeInsets.symmetric(horizontal: 10), 
        height: 65,
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Bayar", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 20
            ),),
            Text("Rp.$total", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            MaterialButton(
                      color: Color.fromARGB(255, 243, 243, 49),
                      onPressed: (){
                       myprovider.Deleteall();
                        Navigator.of(context).push(PageRouteBuilder(
                             pageBuilder: ((context, animation, secondaryAnimation){
                               return HomeScreen();
                               }),
                            transitionsBuilder: (context, animation, secondaryAnimation, child){
                              final tween = Tween(begin: 0.0 , end: 1.0);
                              return FadeTransition(
                                opacity: animation.drive(tween),
                                child: child
                                ,);
                            }
                          ));
                       Fluttertoast.showToast(msg: "Pemesanan Berhasil");
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_basket_rounded, 
                          color: Colors.black,
                          size: 40,),
                          SizedBox(width: 10,),
                          Text("Pesan",style: TextStyle(fontSize: 20, color: Colors.black),)
                          ],
                      ),
                      ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Keranjang'),
        leading: IconButton(icon:Icon(Icons.arrow_back) , onPressed: (){
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);
        },),
      ),
      body: ListView.builder(
        itemCount: myprovider.throwCartList.length,
        itemBuilder: (ctx , index){
          myprovider.getDeleteIndex(index);
          return cartItem(
            onTap: (){
                myprovider.delete();
            },
            keterangan: myprovider.cartList[index].keterangan,
            image: myprovider.cartList[index].image, 
            name: myprovider.cartList[index].name, 
            price: myprovider.cartList[index].price, 
            quantity: myprovider.cartList[index].quantity,
        );})  , );
  }
}