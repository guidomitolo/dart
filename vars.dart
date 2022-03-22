void main(List<String> arguments) {
  /// main block for var (re)assignment and console log from CLI ///

  print('Data Types and Variables in Dart');

  print(arguments); // args from CLI

  print(sum(2, 5)); // int from function

  // Concatenated string and its attributes
  print(username);
  print(fullname);
  print(fullname2);
  print(fullname2.length);
  print(fullname2.contains("z"));
  print(contains);

  // assignment but not definition only can be done in runtime
  dynamicValue = 10;
  print(dynamicValue);
  print(dynamicValue.runtimeType);

  // "final" var prevents later assignment -> immutability
  final String inmutable = 'test';
  // inmutable = 'test2'; -> ERROR

  final numero_inmutable = 1;
  // numero_inmutable = 1; -> ERROR

  // CONST VS FINAL
  // const for context or settings vars setted before runtime
  // (passwords or env variables)

  // const DateTime date = DateTime.now() -> ERROR: The constructor being called isn't a const constructor.
}

// Comments:
/// '///' comment for docs
/// [a] and [b]
/// '''
/// code exampple
/// '''

dynamic dynamicValue = 'Sarasa';

class Pet {
  int age = 1;
}

int sum(int a, int b) {
  return a + b;
}

int ageOfPet = 10;
var ageOfPet_var = 1;

double price = 10.5;
var price_var = 10.5;

bool enabled = false;
String username = 'tito', firstName = 'Felipe', lastName = 'Gonzalez';

String fullname = username +
    " " +
    firstName +
    ' ' +
    lastName +
    ' edad:' +
    ageOfPet.toString();
String fullname2 = '$firstName $lastName, age: $ageOfPet';

String contains = '${lastName.contains("z")}';

// no puedo cambiar el tipo de variable a string ya estando definida antes
// price = ""

// All variables inherit from OBJECT Class

final names = <String>['Diego'];
