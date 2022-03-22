void main(List<String> arguments) {
  print('dev mode');
  print(arguments);
  print(sum(2, 5));
  final cat = Pet();
  print(cat.age);
  print(username);

  print(fullname);
  print(fullname2);
  print(fullname2.length);
  print(contains);

  // la asignacion (no definicion) solo se puede hacer por contexto
  dynamicValue = 10;
  print(dynamicValue);
  print(dynamicValue.runtimeType);

  // "final" impide asignacion posterior -> inmutabilidad
  final String inmutable = 'test';
  // inmutable = 'test2'; error

  final numero_inmutable = 1;
  // numero_inmutable = 1; error

  // CONST VS FINAL
  // const para variables que guardan datos
  // previo a la ejecucion del proyecto (i.e. claves o variables de settings)

  // const DateTime date = DateTime.now() -> ERROR: The constructor being called isn't a const constructor.

  const lulu = MyPet();

  // lista
  numbers.clear(); // vaciar lista
  numbers_2.add(5);
  numbers_2.removeAt(0);
  numbers_2.removeLast();
  numbers_2.remove(1); // elimina el elemento
  numbers_2.removeWhere(
      (elementInList) => elementInList % 2 == 0); // iterar y eliminar pares
  var new_list = numbers_2.where(((element) => element % 2 != 0));
  print(numbers_2);
  print(new_list);

  names.add("Daniel");
  names.addAll(['Darío', 'Dardo', 'Daniel', 'Ariel']);
  names.remove('Daniel');
  names.removeAt(0);
  names.removeWhere((element) {
    print('element $element');
    return false; // return obligatorio
  }); // itera todos los elementos
  names.removeWhere((element) =>
      element == "Dardo"); // itera hasta que se cumpla la condicion
  print(names.indexOf('Dario'));
  print(names.indexWhere((element) => element == 'Dario'));

  final filtered = names.where((element) => element.startsWith('A'));
  print('filtered $filtered'); // sigue retornando una lista
  print(filtered.toList()); // sigue retornando una lista

  final filtered_2 = names.lastWhere((element) => element.startsWith('A'));
  print(filtered_2); // retorna solo el ultimo y no es lista
  final filtered_3 = names.lastWhere(
    (element) => element.startsWith('R'),
    orElse: () => "not found",
  );
  print(filtered_3);
}

class MyPet {
  // MyPet(); -> Constructor invalido para instancia de tipo const
  const MyPet();
}

dynamic dynamicValue = 'Sarasa';

class Pet {
  int age = 1;
}

// listas
List<int> numbers = [1, 2, 3];
var numbers_2 = [1, 2, 3, 4]; // tipo no definido
var numbers_3 = <int>[1, 2, 3];

int sum(int a, int b) {
  /// '///' comment for docs
  /// [a] and [b]
  /// '''
  /// code exampple
  /// '''
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

// TODOS LAS VARIABLES HEREDAN DE LA CLASE Object

final names = <String>['Diego'];
