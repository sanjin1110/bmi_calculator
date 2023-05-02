class BmiModel {
  double calculateBMI(height, weight) {
    double a = (weight / (height * height));
    return a;
  }

  String reverseString(str) {
    String reversedStr = "";
    for (int i = str.length - 1; i >= 0; i--) {
      reversedStr += str[i];
    }
    return reversedStr;
  }

  int calculateSecondHeighest(List<int> list) {
    list.sort((a, b) => b.compareTo(a));
    return list[1];
  }


}
