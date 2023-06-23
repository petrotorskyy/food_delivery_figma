import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/constants/const.dart';
import '../../../../../core/data/exceptions.dart';
import '../../../../../core/services/firebase/firestore_crud_operations.dart';
import '../../repositories/user_remote_data_model.dart';

class UsersRemoteDataSource
    extends FirestoreCrudOperations<UserRemoteDataModel> {
  final FirebaseAuth firebaseAuth;
// firebase authentication
  UsersRemoteDataSource(this.firebaseAuth)
      : super('users', UserRemoteDataModel.fromFirestoreDocument);

  User getLoggedUser() {
    final user = firebaseAuth.currentUser;
    return user!;
  }

  // register
  Future<User?> register(String name, String email, String password) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = result.user!;
      const defaultAvatar = AppPng.defaultAvatar;
      await Future.wait([
        user.updateDisplayName(name),
        user.updatePhotoURL(defaultAvatar),
        super.add(UserRemoteDataModel(
            id: user.uid,
            email: email,
            name: name,
            profilePicture: AppPng.defaultAvatar))
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
