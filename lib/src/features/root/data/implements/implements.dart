
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class RootRepositoryImp implements RootRepository{

        final RootRemoteDataSource remoteDataSource;
        RootRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    