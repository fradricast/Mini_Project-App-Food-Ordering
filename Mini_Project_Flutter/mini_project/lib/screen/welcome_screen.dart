import 'package:flutter/material.dart';
import 'package:mini_project/screen/login_screen.dart';
class welcomeScreen extends StatelessWidget {
  const welcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [   
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset("assets/logo/logo.png",
                fit: BoxFit.contain,)
            )
          ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Welcome To Order Food", 
                  style: TextStyle(
                    fontSize: 40, 
                    fontWeight: FontWeight.bold, 
                    color: Color.fromARGB(245, 255, 176, 6)
                  ),),
                  Column(
                    children: [
                      Text("Lets Start", 
                      style : TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold, 
                        color: Color.fromARGB(245, 255, 176, 6)
                        )),
                      Container(
                        child: ElevatedButton(
                          onPressed: (){
                         Navigator.of(context).push(
                           PageRouteBuilder(
                             pageBuilder: ((context, animation, secondaryAnimation){
                               return loginScreen();
                               }),
                            transitionsBuilder: (context, animation, secondaryAnimation, child){
                              final tween = Tween(begin: 0.0 , end: 0.9);
                              return FadeTransition(
                                opacity: animation.drive(tween),
                                child: child
                                ,);
                            }
                          ));
                          }, 
                          child: Icon(Icons.arrow_right, 
                          size: 40, 
                          color: Colors.black,)),
                      )
                    ],

                  )
                ],
              ),)),
        ],
      ),
      
    );
  }
}