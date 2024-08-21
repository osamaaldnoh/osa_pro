abstract class BaseHttpMethods {
  Future<T> getApi<T>({required String url});
  Future<T> postApi<T>(
      {required String pathUri, required Map<String, dynamic> body}
      //{ Map<String, String> headers,}
      );
}
