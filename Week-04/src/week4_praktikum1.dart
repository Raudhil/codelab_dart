void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final List<String?> list = List.filled(5, null);

  list[1] = "Raul";
  list[2] = "2341720164";

  print(list);
  print("Index 1: ${list[1]}");
  print("Index 2: ${list[2]}");
}
