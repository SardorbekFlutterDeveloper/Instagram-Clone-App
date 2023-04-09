 import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class SignOutUseCase {
  final FirebaseRepository repository;

  SignOutUseCase( this.repository);

  Future<void> call() {
    return repository.signOut();
  }


  
}
