import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.idTokenChanges();
  
  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print("Signed in");
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      print("Signed up");
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Future<String> signOut() async {
    await _firebaseAuth.signOut();
    print("Log out");
  }
}
