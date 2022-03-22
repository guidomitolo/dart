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
  dynamicValue = true;
  print(dynamicValue.runtimeType);
}

// Comments:
/// '///' comment for docs
/// [a] and [b]
/// '''
/// code exampple
/// '''

// dynamic: can change var type assignment
dynamic dynamicValue = 'Sarasa';

int sum(int a, int b) {
  return a + b;
}

int ageOfPet = 10;
var ageOfPet_var = 1;

double price = 10.5;
// price = 1; // -> Error: cannot asign value outside runtime

var price_var = 10.5; // type define at first asignment

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

// All variables inherit from OBJECT Class
