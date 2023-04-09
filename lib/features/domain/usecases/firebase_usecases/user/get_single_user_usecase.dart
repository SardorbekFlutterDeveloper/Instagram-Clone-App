import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class GetSingleUserUseCase {
  final FirebaseRepository repository;

  GetSingleUserUseCase( this.repository);

  Stream<List<UserEntity>> call(String uid) {
    return repository.getSingleUser(uid);
  }


  
}
