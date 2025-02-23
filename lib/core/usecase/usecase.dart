
// ignore_for_file: one_member_abstracts

abstract class UseCase<Type, Params> {
  // se usan los generics para definir el tipo de dato que se va a retornar
  // y los parametros que se van a recibir
  Future<Type> call({Params params});
}
