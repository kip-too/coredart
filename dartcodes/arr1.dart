void main() {
  var l1 = [1, 2, 3, 4];
  print(l1);
  var l2 = [
    [1, 2, 3, 4],
    [1, 2, 3, 4]
  ];
  print(l2[0][1]);
  print(l2[1][2]);

  var l3 = [
    [
      [1, 2, 3, 4],
      [1, 2, 3, 4],
      [1, 2, 3, 4]
    ]
  ];
  print(l3);
  print(l3[0][1][1]);
}
