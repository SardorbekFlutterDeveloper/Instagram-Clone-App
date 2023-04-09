import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class SignInUserUseCase {
  final FirebaseRepository repository;

  SignInUserUseCase( this.repository);

  Future<void> call(UserEntity userEntity) {
    return repository.signInUser(userEntity);
  }


  
}
