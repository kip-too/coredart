void main() {
  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);

  var sub = s1.listen((_) => _);
  sub.onData((data) {
    if(data<10){
    print(data);
  } else {
  sub.cancel();
  }

  });
  sub.onDone(() => print("Done!"));
  sub.onData((error) => print(error));
}
