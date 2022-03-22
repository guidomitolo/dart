void main(List<String> arguments) {
  Map<String, String> users = {}; //  llave string, valor string
  users['user1'] = 'Daniel';
  users['user2'] = 'Dardo';
  final removed = users.remove('user2');
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
