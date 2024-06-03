import 'package:flutter_emart_app/consts/consts.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  //Login method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? usercredintial;
    try {
      usercredintial = await auth.signInWithEmailAndPassword(email: emailcontroller.text, password: passcontroller.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return usercredintial;
  }

  // Sinup Method

  Future<UserCredential?> signUpMethod({email, password, context}) async {
    UserCredential? usercredintial;
    try {
      usercredintial = await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return usercredintial;
  }

  //Store user data

  storeUserdata({name, email, password}) async {
    DocumentReference store = firestore.collection(userCollection).doc(currentUser!.uid);
    store.set({'name': name, 'email': email, 'password': password, 'imgUrl': "", 'id': currentUser!.uid});
  }

  sinoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
