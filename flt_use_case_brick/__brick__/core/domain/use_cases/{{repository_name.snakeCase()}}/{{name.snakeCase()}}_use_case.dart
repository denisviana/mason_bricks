import '../../repositories/{{#create_entity}}{{repository_name.snakeCase()}}/{{repository_name.snakeCase()}}_repository_implementation.dart';

import '../base/base_use_case.dart';

{{#use_param_class}}
class {{name.pascalCase()}}Params {

  final String property;

  const {{name.pascalCase()}}Params({required this.property});

}

{{#use_param_class}}
class {{name.pascalCase()}}UseCase extends BaseFutureResourceUseCase<{{name.pascalCase()}Params}}, void>{

  final {{repository_name.pascalCase()}}Repository _repository;

  {{name.pascalCase()}}UseCase(this._repository);

  @override
  Future<void> call({{name.pascalCase()}Params}} params) async =>
    await _loginRepository.{{name.camelCase()}}(property: params.property);

}
{{/use_param_class}}
class {{name.pascalCase()}}UseCase extends BaseFutureResourceUseCase<void, void>{

  final {{repository_name.pascalCase()}}Repository _repository;

  {{name.pascalCase()}}UseCase(this._repository);

  @override
  Future<void> call({{name.pascalCase()}Params}} params) async =>
  await _loginRepository.{{name.camelCase()}}(property: params.property);

}