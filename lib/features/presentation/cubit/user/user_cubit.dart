import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/usecases/firebase_usecases/user/get_users_usecase.dart';
import 'package:clean/features/domain/usecases/firebase_usecases/user/update_user_usecase.dart';
import 'package:equatable/equatable.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UpdateUserUseCase updateUserUseCase;
  final GetUserUseCase getUserUseCase;

  UserCubit(this.updateUserUseCase, this.getUserUseCase) : super(UserInitial());

  Future<void> getUsers({required UserEntity user}) async {
    emit(UserLoading());

    try {
      final streamResponse = getUserUseCase.call(user);
      streamResponse.listen((users) {
        emit(UserLoaded(users: users));

      });
    } on SocketException catch (_) {
      emit(UserFailure());
    } catch (_) {
      emit(UserFailure());
    }
  }

   Future<void> signUpUser({required UserEntity user}) async {

    try {
      await updateUserUseCase
          .call(user);
      // emit((UserFailure()));
    } on SocketException catch (_) {
      emit(UserFailure());
    } catch (_) {
      emit(UserFailure());
    }
  }
}
