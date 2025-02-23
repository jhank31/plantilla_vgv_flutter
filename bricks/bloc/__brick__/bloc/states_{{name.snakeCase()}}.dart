part of 'bloc_{{name.snakeCase()}}.dart';

class Bloc{{name.pascalCase()}}State extends Equatable {
  const Bloc{{name.pascalCase()}}State();

  @override
  List<Object> get props => [];
}
{{#eventsList}}
/// {@template Bloc{{name.pascalCase()}}InitialState}
/// 
/// {@endtemplate}
final class Bloc{{name.pascalCase()}}InitialState extends Bloc{{name.pascalCase()}}State {
  const Bloc{{name.pascalCase()}}InitialState();
  /// {@macro Bloc{{name.pascalCase()}}InitialState}
}
{{/eventsList}}