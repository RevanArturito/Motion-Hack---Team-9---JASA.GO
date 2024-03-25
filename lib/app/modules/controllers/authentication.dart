import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jasa_go/app/routes/app_pages.dart';


class AuthenticationController extends GetxController {

  FirebaseAuth Authentication = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => Authentication.authStateChanges();

  Future<bool> handleLogin(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    //Get.offAllNamed(Routes.HOME); 
    return true;
  }

  
}