import 'package:bloc/bloc.dart';
import 'package:clean/features/domain/usecases/firebase_usecases/user/get_current_uid_usecase.dart';
import 'package:clean/features/domain/usecases/firebase_usecases/user/is_sing_in_usecase.dart';
import 'package:clean/features/domain/usecases/firebase_usecases/user/sign_out_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final SignOutUseCase signOutUseCase;
  final IsSignInUseCase isSignInUseCase;
  final GetCurrentUidUseCase getCurrentUidUseCase;

  AuthCubit(
      this.signOutUseCase, this.isSignInUseCase, this.getCurrentUidUseCase)
      : super(AuthInitial());

  Future<void> appStarted(BuildContext context) async {
    try {
      bool isSignin = await isSignInUseCase.call();
      if (isSignin == true) {
        final uid = await getCurrentUidUseCase.call();
        emit(Authenticated(uid));
      } else {
        emit(UnAuthInitial());
      }
    } catch (e) {
      emit(UnAuthInitial());
    }
  }

  Future<void> loggedIn() async {
    try {
      final uid = await getCurrentUidUseCase.call();
      emit(Authenticated(uid));
    } catch (_) {
      emit(UnAuthInitial());
    }
  }
}
