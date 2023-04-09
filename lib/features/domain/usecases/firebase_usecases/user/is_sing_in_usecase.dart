import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class IsSignInUseCase {
  final FirebaseRepository repository;

  IsSignInUseCase( this.repository);

  Future<bool> call() {
    return repository.isSignIn();
  }


  
}
