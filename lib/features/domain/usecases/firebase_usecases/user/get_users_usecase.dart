import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class GetUserUseCase {
  final FirebaseRepository repository;

  GetUserUseCase( this.repository);

  Stream<List<UserEntity>> call(UserEntity userEntity) {
    return repository.getUsers(userEntity);
  }


  
}
