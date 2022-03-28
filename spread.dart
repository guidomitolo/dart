void main(List<String> arguments) {
  // SPREAD Operator ...

  List<int> numbers = [1, 2];
  numbers = [...numbers, 3, 4];
  print(numbers);

  Map<String, String> json = {'name': 'jorge'};
  json = {...json, 'lastname': 'rodriguez'};
  print(json);
}
