void main(List<String> arguments) {
  // LISTS METHODS

  print('numbers: $numbers');

  numbers.clear(); // empty

  numbers_2.add(5);
  numbers_2.removeAt(0); // remove by index
  numbers_2.removeLast();
  numbers_2.remove(1); // remove element

  numbers_2.removeWhere(
      (elementInList) => elementInList % 2 == 0); // loop and remove pairs

  var new_list = numbers_2.where(((element) => element % 2 != 0));
  print(numbers_2);
  print(new_list);

  names.add("Daniel");
  names.addAll(['Darío', 'Dardo', 'Daniel', 'Ariel']);
  print('names: $names');
  names.remove('Daniel');
  names.removeAt(0);

  names.removeWhere((element) {
    print('element $element');
    return false; // return mandatory
  });

  // loop untils condition is checked
  names.removeWhere((element) => element == "Dardo");

  print('names: $names');
  print(names.indexOf('Dario'));
  print(names.indexWhere((element) => element == 'Dario'));

  final filtered = names.where((element) => element.startsWith('A'));
  print('filtered $filtered'); // new inmutable list
  dynamic filtered_list = filtered.toList();
  print('filtered $filtered_list'); // to list

  final filtered_2 = names.lastWhere((element) => element.startsWith('A'));
  print(filtered_2); // last of the list, not in list

  final filtered_3 = names.lastWhere(
    (element) => element.startsWith('R'),
    orElse: () => "not found",
  );
  print(filtered_3);
}

// listas

List<int> numbers = [1, 2, 3];
var numbers_2 = [1, 2, 3, 4]; // tipo no definido
var numbers_3 = <int>[1, 2, 3];

final names = <String>['Diego'];
