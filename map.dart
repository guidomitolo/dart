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
}
