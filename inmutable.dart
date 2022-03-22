void main(List<String> arguments) {
  // CONST VS FINAL
  // const for context or settings vars setted before runtime
  // (passwords or env variables)

  // "final" var prevents later assignment -> immutability
  final String inmutable = 'test';
  // inmutable = 'test2'; -> ERROR

  final numero_inmutable = 1;
  // numero_inmutable = 1; -> ERROR

  // CONST Class Constructor

  // DateTime cannot be CONST
  // The constructor being called isn't a const constructor.
  // const DateTime date = DateTime.now() -> ERROR

  const lulu =
      MyPet(); // const class constructor required for const variable/instance
}

class MyPet {
  // MyPet(); -> Invalid constructor for const instance/variable
  const MyPet();
}
