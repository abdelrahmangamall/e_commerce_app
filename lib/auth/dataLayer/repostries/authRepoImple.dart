import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/auth/domainLayer/repostries/authRepo.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class authRepoImple extends authRepo{
  @override
  Future completeInfo({required String name, required String address, required String phoneNum}) {
    // TODO: implement completeInfo
    throw UnimplementedError();
  }

 // @override
 // Future<UserCredential> loginWithF() async{

  //    final LoginResult loginResult = await FacebookAuth.instance.login();

    //  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    //  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
 // }

  @override
  Future<Either<Exception,UserCredential>> loginWithG() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication googleAuth = await googleUser!
          .authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // Once signed in, return the UserCredential
      return Right(await FirebaseAuth.instance.signInWithCredential(credential));
    } on Exception catch (e) {
       return  Left(Exception('Something went wrong'));
    }

    }
  }
  
