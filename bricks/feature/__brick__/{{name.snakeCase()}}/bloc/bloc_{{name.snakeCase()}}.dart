import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events_{{name.snakeCase()}}.dart';
part 'states_{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Bloc extends Bloc<Bloc{{name.pascalCase()}}Event, Bloc{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super(const Bloc{{name.pascalCase()}}InitialState()){
    {{#eventsList}}
    on<Bloc{{name.pascalCase()}}{{..pascalCase()}}Event>(
      _onBloc{{name.pascalCase()}}{{..pascalCase()}}Event,
    );
    {{/eventsList}}
  }

    {{#eventsList}}
  void _onBloc{{name.pascalCase()}}{{..pascalCase()}}Event(
    Bloc{{name.pascalCase()}}{{..pascalCase()}}Event event, 
    Emitter<Bloc{{name.pascalCase()}}State> emit,
  ) {
    //TODO: Implement {{..pascalCase()}} event
  }
    {{/eventsList}}
}
