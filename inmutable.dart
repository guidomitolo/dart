void main(List<String> arguments) {
  // CONST VS FINAL
  // const para variables que guardan datos
  // previo a la ejecucion del proyecto (i.e. claves o variables de settings)

  // "final" var prevents later assignment -> immutability
  final String inmutable = 'test';
  // inmutable = 'test2'; -> ERROR

  final numero_inmutable = 1;
  // numero_inmutable = 1; -> ERROR

  // const DateTime date = DateTime.now() -> ERROR: The constructor being called isn't a const constructor.

  const lulu =
      MyPet(); // const class constructor required for const variable/instance
}

class MyPet {
  // MyPet(); -> Invalid constructor for const instance/variable
  const MyPet();
}
