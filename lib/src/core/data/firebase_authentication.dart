import 'package:firebase_auth/firebase_auth.dart';

import '../constants/const.dart';
import 'exceptions.dart';

class FirebaseAuthentication {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthentication(this.firebaseAuth);

  Future<User?> register(String name, String email, String password) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = result.user!;
      const defaultAvatar = AppPng.defaultAvatar;
      await Future.wait([
        user.updateDisplayName(name),
        user.updatePhotoURL(defaultAvatar),
      ]);
      return result.user!;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          throw EmailAlreadyInUseException(
              message: AppString.emailInUseException);
        case 'invalid-email':
          throw InvalidEmailException(message: AppString.invalidEmailException);
        case 'weak-password':
          throw WeakPasswordException(message: AppString.weakPasswordException);
      }
      rethrow;
    }

    return null;
  }

  // logout
  Future<void> logout() async {
    await firebaseAuth.signOut();
  }

  Future<User?> login(String email, String password) async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print(result);
      return result.user!;
    } on FirebaseAuthException catch (e) {
      print(e);
      switch (e.code) {
        case 'too-many-requests':
          throw TooManyRequestException(
              message: AppString.tooManyRequestException);
        case 'user-not-found':
          throw UserNotFoundException(message: AppString.userNotFoundException);
        case 'wrong-password':
          throw WrongPasswordException(
              message: AppString.wrongPasswordException);
        case 'invalid-email':
          throw InvalidEmailException(message: AppString.invalidEmailException);
        case 'user-disabled':
          throw UserDisabledException(message: AppString.userDisabledException);
      }
    }

    return null;
  }
}
