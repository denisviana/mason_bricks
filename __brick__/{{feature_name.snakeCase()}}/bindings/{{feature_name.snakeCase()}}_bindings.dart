import 'package:get/get.dart';
import '../${{feature_name.snakeCase}}_controller.dart';

class {{feature_name.camelCase}}Bindings extends Binding {
  @override
  List<Bind> dependencies() => [
    Bind.lazyPut({{feature_name.camelCase}}Controller.new),
  ];
}
