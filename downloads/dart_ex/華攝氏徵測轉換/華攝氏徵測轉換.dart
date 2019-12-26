//在此輸入溫度
List candf = ["20C", "30C", "50F", "40C", "23F"];

void main() {
  for (var i in candf) {
    if (i[2] == "C") {
      var o = (i[0] + i[1]);
      var c = num.parse(o);
      num f = c * 9 / 5 + 32;

      print("C $c °等於F $f °");}
    if (i[2] == "F") {
      var o = (i[0] + i[1]);
      var f = num.parse(o);
      num c = (f - 32) * 5 / 9;
      print("F $f °等於C $c ° ");
    }
  }
}