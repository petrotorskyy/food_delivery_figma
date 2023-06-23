import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/domain/entities/user_entity.dart';
import '../../../../../core/value_objects/email_value_object.dart';
import '../../../../../core/value_objects/password_value_object.dart';
import '../../../domain/failures.dart';
import '../../../domain/use_cases/login_use_case.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is EmailChanged) {
        emit(state.copyWith(
            email: event.email, authFailureOrSuccessOption: none()));
      } else if (event is PasswordChanged) {
        emit(state.copyWith(
            password: event.password, authFailureOrSuccessOption: none()));
      } else if (event is LoginSubmitted) {
        final params = LoginParams(
          emailAddress: state.email,
          password: state.password,
        );
        print(params.emailAddress);
        print(params.password);
        final result = await loginUseCase.call(params);
        emit(state.copyWith(authFailureOrSuccessOption: some(result)));
      }
    });
  }
}
