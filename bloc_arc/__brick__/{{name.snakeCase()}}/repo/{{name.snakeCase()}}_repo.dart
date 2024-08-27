class {{name.pascalCase()}}Repo {
final DioUtil _dioUtil = DioUtil();

Future<{{name.pascalCase()}}Model?> getDataApi({
  required int id,
  }) async {
  {{name.pascalCase()}}Model? result;
    try {
      final response =
      await _dioUtil.getApi(path: ApiConfig.getData, queryParameters: {
      'id': id,
      });
      if(response != null) {
      result = {{name.pascalCase()}}Model.fromJson(response.data);
      }
      return result;
    } catch (e) {
    DebugUtils.showPrint('Exception getDataApi : $e');
    }
  return result;
}

}
