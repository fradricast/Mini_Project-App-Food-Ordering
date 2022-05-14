import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/model/provider/provider.dart';
import 'package:mini_project/screen/welcome_screen.dart';
import 'package:provider/provider.dart';




Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( 
    options: const FirebaseOptions(
      apiKey: "AIzaSyBRzyBHlej97NoVq8QoVcLpGZPNtyaOO8o",
      appId: "1:598835379936:android:8cf8595c6e95b634a59a85",
      messagingSenderId: "598835379936",
      projectId: "login-and-signup-2140b",));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> MyProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pesanan Makanan',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: const welcomeScreen(),
      ),
    );
  }
}
