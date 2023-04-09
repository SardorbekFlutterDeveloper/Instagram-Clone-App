import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class UpdateUserUseCase {
  final FirebaseRepository repository;

  UpdateUserUseCase( this.repository);

  Future<void> call(UserEntity userEntity) {
    return repository.updateUser(userEntity);
  }


  
}
