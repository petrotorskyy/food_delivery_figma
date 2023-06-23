import 'package:dartz/dartz.dart';
import '/src/features/auth/domain/failures.dart';
import '/src/features/auth/domain/use_cases/register_use_case.dart';
import '../../../../core/domain/entities/user_entity.dart';
import '../../../../core/value_objects/email_value_object.dart';
import '../../../../core/value_objects/password_value_object.dart';

abstract class AuthRepo {
  UserEntity getLoggedUser();

  Future<UserEntity> getUserById(String id);

  Future<void> logout();

  Future<Either<AuthFailure, UserEntity>> login(
      EmailAddress emailAddress, Password password);

  Future<Either<AuthFailure, Unit>> register(
    RegisterParams registerParams,
  );
}
