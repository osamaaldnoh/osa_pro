import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class UserPayMethodRepositoryImp implements UserPayMethodRepository {
  final UserPayMethodRemoteDataSource remoteDataSource;
  UserPayMethodRepositoryImp({required this.remoteDataSource});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
