import '../../../domain/repositories/{{repository_name.snakeCase()}}/{{repository_name.snakeCase()}}_repository.dart';

class {{repository_name.pascalCase()}}RepositoryImplementation implements {{repository_name.pascalCase()}}Repository{

  @override
  Future<dynamic> {{name.camelCase()}}({required String property});

}