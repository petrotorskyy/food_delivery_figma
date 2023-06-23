import 'package:uuid/uuid.dart';

import '../../../../core/services/firebase/firestore_crud_operations.dart';

class UserRemoteDataModel extends FirestoreDocumentModel {
  final String name, profilePicture, email;

  UserRemoteDataModel({
    required this.name,
    this.profilePicture = '',
    required this.email,
    String? id,
  }) : super(id ?? const Uuid().v4());
  UserRemoteDataModel.fromFirestoreDocument(super.doc)
      : name = doc['name'],
        profilePicture = doc['profile_picture'],
        email = (doc['email'] as String),
        super.fromFirestoreDocument();

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'profile_picture': profilePicture,
      'email': email,
    };
  }
}
