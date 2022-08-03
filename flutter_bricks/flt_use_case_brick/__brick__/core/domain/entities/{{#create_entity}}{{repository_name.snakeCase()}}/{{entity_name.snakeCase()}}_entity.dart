import 'package:equatable/equatable.dart';

class {{entity_name.pascalCase}}Entity extends Equatable {

  final String property;

  const {{entity_name.pascalCase}}Entity({required this.property});

  @override
  List<Object?> get props => [property];

}