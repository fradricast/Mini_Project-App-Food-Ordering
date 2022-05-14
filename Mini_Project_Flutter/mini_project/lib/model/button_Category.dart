import 'package:flutter/material.dart';
import 'package:mini_project/screen/home_screen.dart';
import 'package:mini_project/screen/detail_screen.dart';
class buttonContainer extends StatelessWidget {
  
  final String image;
  final int price;
  final String name;
 buttonContainer({required this.image,required this.price, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap :(){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>DetailPageScreen(
          image: image ,
          name: name,
          price: price,
        )), (route) => false);
      },
      child: Container(         
                    height: 270,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 49),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
      
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(image),
                        ),
                        SizedBox(height: 80,),
                        ListTile(
                          leading: Text(
                            name, 
                            style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                          trailing: Text("Rp. $price", 
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 170,),
                        Padding(
                          padding: const EdgeInsets.only(left : 12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star, size: 20,
                                color : Colors.white
                               ),
                              Icon(
                                Icons.star, size: 20,
                                color : Colors.white
                               ),
                              Icon(
                                Icons.star, size: 20,
                                color : Colors.white
                               ),
                              Icon(
                                Icons.star, size: 20,
                                color : Colors.white
                               ),
                              Icon(
                                Icons.star, size: 20,
                                color : Colors.white
                               ),   
                            ],
                          ),
                        )
                      ],
                    ),
         
       ),
    );
  }
}