import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class CreateuserUseCase {
  final FirebaseRepository repository;

  CreateuserUseCase(this.repository);

  Future<void> call(UserEntity user) {
    return repository.createUser(user);
  }


  
}
