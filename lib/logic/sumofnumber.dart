int getSumOfNumber(String name) {
  int sum = 0;
  for (int i = 0; i < name.length; i++) {
    switch (name[i]) {
      case 'a':
      case 'k':
      case 'u':
        sum += 1;
        break;
      case 'b':
      case 's':
      case 'j':
        sum += 2;
        break;
      case 'c':
      case 'l':
      case 't':
        sum += 3;
        break;
      case 'd':
      case 'n':
      case 'x':
        sum += 4;
        break;
      case 'e':
      case 'm':
      case 'w':
        sum += 5;
        break;
      case 'f':
      case 'o':
      case 'v':
        sum += 6;
        break;
      case 'g':
      case 'q':
      case 'z':
        sum += 7;
        break;
      case 'h':
      case 'p':
      case 'y':
        sum += 8;
        break;
      case 'i':
      case 'r':
        sum += 9;
        break;
      default:
        // Nếu ký tự không có trong danh sách chữ cái tương ứng thì bỏ qua
        break;
    }
  }
  return sum;
}
