void main(List<String> arguments) {
  // conditional

  String email = "alguien@gmail.com";
  if (!email.contains('@')) {
    print('invalid mail');
  } else {
    print('yeah');
  }

  // switch

  final currentTime = DateTime.now();
  final weekday = currentTime.weekday;

  switch (weekday) {
    case 1:
      print('day one');
      break;
    case 3:
    case 2:
      print('day two or three');
      break;
    default:
      print('default');
  }

  // while

  int index = 1;

  while (index >= 10) {
    if (index == 5) {
      continue;
    }
    print(index);
    index++;
  }
}
