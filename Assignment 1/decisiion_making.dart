void main() {
  print('If..else if..else'.toUpperCase());
  //if
  int a = 5;
  if (a > 1) {
    print('If block is executed');
  }

  //if..else
  if (a > 10) {
    print('If block is executed');
  } else {
    print('Else block is executed');
  }

  //if..else if..else
  if (a > 5) {
    print('If block is executed');
  } else if (a == 5) {
    print('Else-IF block is executed');
  } else {
    print('Else block is executed');
  }

  //SWITCH
  print('\nSwitch'.toUpperCase());
  String city = "Dhaka";

  switch (city) {
    case 'Dhaka':
      {
        print("Dhaka");
      }
      break;
    case 'Chittagong':
      {
        print("Chittagong");
      }
      break;
    case 'Khulna':
      {
        print("Khulna");
      }
      break;
    case 'Barishal':
      {
        print("Barishal");
      }
      break;
    default:
      {
        print('Default');
      }
  }
}
