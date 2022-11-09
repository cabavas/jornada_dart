Future<void> main() async {
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(
    interval,
    callback,
  );

  // Where tem a mesma função do skipWhile
  stream = stream.where((numero) => numero % 6 == 0).take(2);

  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print("FIM");
}

int callback(int value) {
  print("O valor que chegou: $value");
  return (value + 1) * 2;
}
