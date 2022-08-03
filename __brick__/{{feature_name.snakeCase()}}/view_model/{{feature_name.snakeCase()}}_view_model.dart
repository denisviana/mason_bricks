class {{feature_name.camelCase()}}ViewModel {
  final String args;

  const {{feature_name.camelCase()}}ViewModel({required this.args});

  {{feature_name.camelCase()}}ViewModel copyWith({String? args}) => {{feature_name.camelCase()}}ViewModel(
    args: args ?? this.args,
  );
}
