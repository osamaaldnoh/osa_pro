
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class Item_alternativeRepositoryImp implements Item_alternativeRepository{

        final Item_alternativeRemoteDataSource remoteDataSource;
        Item_alternativeRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    