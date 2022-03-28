void main(List<String> arguments) {
  // MAP = Dictionary

  Map<String, String> users = {}; //  llave string, valor string
  users['user1'] = 'Daniel';
  users['user2'] = 'Dardo';
  final removed = users.remove('user2'); // removed is saved
  print(users);
  print('removed $removed');
  final removed_2 = users.remove('user3'); // devueve nulo
  print(users);
  print('removed $removed_2');

  users.clear();
  print(users);
  users.addAll({'user3': 'Diego', 'user4': 'Diácono'});
  print(users);

  Map<int, String> products = {1: 'Computadora'};
  products[2] = 'Televisor';
  products[3] = 'Lavarropas';
  products.remove(2);
  print(products);

  var stuff = <int, String>{1: 'Aspiradora'};

  // compiler auto defines the value types
  // (hover the variable to see the types <int, Object>)
  var spareparts = {
    1: 'motor', // spareparts is <int, String>
    2: 10, // spareparts changes to <int, String>
  };
  print(spareparts);

  if (spareparts.containsKey(3) == false) {
    spareparts[3] = 'rueda';
  }
  ;
  print(spareparts);

  spareparts.putIfAbsent(10, () {
    return 'tornillo';
  });
  print(spareparts);

  spareparts.removeWhere((key, value) {
    return key == 2 || key == 1000;
  });

  print(spareparts);

  print(products.keys);
  print(products.values.toList());

  var people = <String, Object>{
    'name': 'juan',
    'age': 30,
    'location': {'city': 'ba', 'state': 'ba'},
    'pets': [
      [
        {'type': 'cat', 'name': 'jaime'}
      ],
      {'type': 'dog', 'name': 'lulu'}
    ]
  };
  print(people);

  // Object vs dynamic
  // Object is defined before runtime VS dynamic at runtime

  // print(people['location']['city']);  ERROR
  // objects inside objects must be defined
  final city = (people['location'] as Map<String, String>)['city'];

  // print(people['pets'][0]); ERROR
  // final List<Map<String, dynamic>> pets = people['pets']; ERROR

  var people_2 = <String, dynamic>{
    'name': 'juan',
    'age': 30,
    'location': {'city': 'ba', 'state': 'ba'},
    'pets': ['dog', 'cat']
  };
  print(people_2['location']['city']);
  final List<Map<String, dynamic>> pets = people_2['pets'];
  final List<Map> pets_2 = people_2['pets'];
  print(pets);
  print(people_2['pets'][0]['name']);

  // dynamic
  // The compiler doesnt know what is the type
  // of the var
  // WARNING
  // It breaks if call wrong/non-existent key or method
}
