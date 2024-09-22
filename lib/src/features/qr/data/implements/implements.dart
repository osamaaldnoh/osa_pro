
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class QrRepositoryImp implements QrRepository{

        final QrRemoteDataSource remoteDataSource;
        QrRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    