import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create User object based on firebase object

  User _userFromFirebaseUser(FirebaseUser user){
    return user!=null? User(uid: user.uid) : null;
  }


  //Auth change  user stream
  Stream<User> get user{
    return _auth.onAuthStateChanged
          .map(_userFromFirebaseUser);
  }

  //sign in anon

  Future signInAnon() async{
    try{
        AuthResult result =  await _auth.signInAnonymously();
        FirebaseUser user = result.user;
        return _userFromFirebaseUser(user);
    }
    catch(e){
        print(e.toString());
        return null;
    }
  }


  //sign in with email and pass


  //register with email and pass

  //signout

}