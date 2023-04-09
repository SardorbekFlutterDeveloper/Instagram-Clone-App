import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class GetCurrentUidUseCase {
  final FirebaseRepository repository;

  GetCurrentUidUseCase( this.repository);

  Future<String> call( ) {
    return repository.getCurrentUid();
  }


  
}
