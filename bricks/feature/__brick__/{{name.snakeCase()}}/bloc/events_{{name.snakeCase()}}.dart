part of 'bloc_{{name.snakeCase()}}.dart';

sealed class Bloc{{name.pascalCase()}}Event {
  const Bloc{{name.pascalCase()}}Event();
}
{{#eventsList}}
/// {@template Bloc{{name.pascalCase()}}{{..pascalCase()}}Event}
/// 
/// {@endtemplate}
final class Bloc{{name.pascalCase()}}{{..pascalCase()}}Event extends 
  Bloc{{name.pascalCase()}}Event {
  /// {@macro Bloc{{name.pascalCase()}}{{..pascalCase()}}Event}
  const Bloc{{name.pascalCase()}}{{..pascalCase()}}Event();
}
{{/eventsList}}