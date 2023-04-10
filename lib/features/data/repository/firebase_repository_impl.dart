import 'package:clean/features/data/data_sources/remote_data_source/remote_data_source.dart';
import 'package:clean/features/domain/entities/user/user_entity.dart';
import 'package:clean/features/domain/repository/firebase_repository.dart';

class FirebaseRrepositoryImpl implements FirebaseRepository {
  final FirebaseRemoteDataSource remoteDataSource;

  FirebaseRrepositoryImpl({required this.remoteDataSource});
  @override
  Future<void> createUser(UserEntity user) async =>
      remoteDataSource.createUser(user);

  @override
  Future<String> getCurrentUid() async => remoteDataSource.getCurrentUid();

  @override
  Stream<List<UserEntity>> getSingleUser(String uid) =>
      remoteDataSource.getSingleUser(uid);

  @override
  Stream<List<UserEntity>> getUsers(UserEntity user) =>
      remoteDataSource.getUsers(user);

  @override
  Future<bool> isSignIn() async => remoteDataSource.isSignIn();

  @override
  Future<void> signInUser(UserEntity user) async =>
      remoteDataSource.signInUser(user);

  @override
  Future<void> signOut() async => remoteDataSource.signOut();

  @override
  Future<void> signUpUser(UserEntity user) async =>
      remoteDataSource.signUpUser(user);

  @override
  Future<void> updateUser(UserEntity user) async =>
      remoteDataSource.updateUser(user);
}
