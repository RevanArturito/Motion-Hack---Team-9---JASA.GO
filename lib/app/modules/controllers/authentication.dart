import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class AuthenticationController extends GetxController {

  FirebaseAuth Authentication = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => Authentication.authStateChanges();

  Future<bool> handleLogin(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    //Get.offAllNamed(Routes.HOME); 
    return true;
  }

  
}