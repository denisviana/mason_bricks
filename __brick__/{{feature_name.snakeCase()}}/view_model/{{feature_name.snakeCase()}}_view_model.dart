class {{feature_name.pascalCase()}}ViewModel {
  final String args;

  const {{feature_name.pascalCase()}}ViewModel({required this.args});

  {{feature_name.pascalCase()}}ViewModel copyWith({String? args}) => {{feature_name.pascalCase()}}ViewModel(
    args: args ?? this.args,
  );
}
