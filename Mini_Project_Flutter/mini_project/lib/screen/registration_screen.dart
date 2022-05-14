import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mini_project/model/user_model.dart';
import 'package:mini_project/screen/login_screen.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  
    final _formkey = GlobalKey<FormState>();
    final firstNameController  = new TextEditingController();
    final secondNameController  = new TextEditingController();
    final newUsernameController  = new TextEditingController();
    final newPasswordController  = new TextEditingController();
    final confirmPasswordController = new TextEditingController();

    final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {

      final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameController,
      keyboardType: TextInputType.name,
      validator: (value){
        RegExp regex = new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("Second Name Can't be Empty");
        }
        return null;
      },
      onSaved: (value){
        secondNameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        labelText:"Second Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
      );
      final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameController,
      keyboardType: TextInputType.name,
      validator: (value){
        RegExp regex = new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return ("First Name Can't be Empty");
        }
        return null;
      },
      onSaved: (value){
        firstNameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        labelText:"First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
      );
      final newUsernameField = TextFormField(
      autofocus: false,
      controller: newUsernameController,
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
        newUsernameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        labelText:"Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
    );
      final newPasswordField = TextFormField(
      autofocus: false,
      controller: newPasswordController,
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
        newPasswordController.text=value!;
      },
       textInputAction: TextInputAction.next,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        labelText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    );
      final ConfirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordController,
      obscureText: true,
      validator: (value){
        if(confirmPasswordController.text != newPasswordController.text){
            return "Password don't Match";
        };
        return null;
      },
      onSaved: (value){
        confirmPasswordController.text=value!;
      },
       textInputAction: TextInputAction.done,
      decoration : InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        labelText: "Confirm Password" ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
    );
      final SignUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.yellowAccent,
      child: MaterialButton(
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15) ,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          signUp(newUsernameController.text, newPasswordController.text);
        },
        child: Text('SignUp', 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold),),
      ),
   );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, 
          color: Colors.yellowAccent,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
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
                    SizedBox(height:180,
                    child: Image.asset("assets/logo/logo.png",
                    fit: BoxFit.contain,),
                    ),
                       SizedBox(height: 45,),
                    firstNameField,
                      SizedBox(height: 20,),
                    secondNameField,
                      SizedBox(height: 20,),
                    newUsernameField,
                       SizedBox(height: 20,),
                    newPasswordField,
                       SizedBox(height: 20,),
                    ConfirmPasswordField,
                       SizedBox(height: 20,),
                    SignUpButton,
                       SizedBox(height: 15,),
                  ],
                ) ),
            ),
          ),

        ),
      ),
      
    );
  }

  void signUp(String email, String password) async { 
    if(_formkey.currentState!.validate()){
        await _auth.createUserWithEmailAndPassword(email: email, password: password).then((value) => {
          postDetailsToFirestore()
        }).catchError((e){
          Fluttertoast.showToast(msg: e!.message);
        });
    };
  }
  postDetailsToFirestore()async{
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      User? user = _auth.currentUser;

      userModel usermodel = userModel();

      usermodel.email = user!.email;
      usermodel.uid = user.uid;
      usermodel.firstName = firstNameController.text;
      usermodel.secondName = secondNameController.text;
  
      await firebaseFirestore.collection("users").doc(user.uid).set(usermodel.toMap());

      Fluttertoast.showToast(msg: "Account Created Successfully");
      Navigator.pushAndRemoveUntil((context), MaterialPageRoute(builder: (context)=> loginScreen()), (route) => false);
  }

}