import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mini_project/screen/home_screen.dart';
import 'package:mini_project/screen/registration_screen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({ Key? key }) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  final _formkey = GlobalKey<FormState>();
  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
   

   final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
  final usernamefield = TextFormField(
      autofocus: false,
      controller: usernameController,
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value!.isEmpty){
          return ("Please Enter Your Email");
        }
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
          return ("Please Enter Valid Email");
        }
        return null;
      },
      onSaved: (value){
        usernameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        labelText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
  final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value){
        RegExp regex = new RegExp(r'^.{5,}$');
        if(value!.isEmpty){
          return ("Please Is Required for Loggin");
        }
        if(!regex.hasMatch(value)){
          return ("Password not Valid(Min. 5 Character)");
        }
      },
      onSaved: (value){
        passwordController.text=value!;
      },
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        labelText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
      textInputAction: TextInputAction.done,
     );
     
  final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.yellowAccent,
      child: MaterialButton(
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          signIn(usernameController.text, passwordController.text);
        },
        child: Text('Login', 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(245, 159, 112, 11),
          fontWeight: FontWeight.bold),),  
      ),
   );
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height:200,
                    child: Image.asset("assets/logo/logo.png",
                    fit: BoxFit.contain,),
                    ),
                       SizedBox(height: 45,),
                    usernamefield,
                       SizedBox(height: 25,),
                    passwordField,
                       SizedBox(height: 35,),
                    loginButton,
                       SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        Text("Don't have an account ? "),
                        GestureDetector(
                          onTap: (){
                          Navigator.of(context).push(
                           PageRouteBuilder(
                             pageBuilder: ((context, animation, secondaryAnimation){
                               return RegistrationScreen();
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
                          child: Text("Sign Up", style: TextStyle(
                            color: Color.fromARGB(245, 255, 176, 6),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),),
                        )

                      ],
                    )
                  ],
                ) ),
            ),
          ),

        ),
      ),
      
    );
  }
 
  void signIn(String email, String password)async{
    if(_formkey.currentState!.validate()){
      await _auth.signInWithEmailAndPassword(email: email, password: password)
      .then((uid) => {
        Fluttertoast.showToast(msg: "Loggin Successful"),
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomeScreen())),
      }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }





}