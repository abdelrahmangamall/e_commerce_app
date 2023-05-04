import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class authRepo {

  Future<Either<Exception,UserCredential>> loginWithG();
  //Future loginWithF();
  Future completeInfo({
    required String name,
    required String address,
    required String phoneNum});

}