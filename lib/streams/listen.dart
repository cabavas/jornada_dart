Future<void> main() async {
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(
    interval,
    callback,
  );

  // O programa fica ouvindo a stream, mas não fica parado esperando ela executar
  // nem ser finalizada.
  stream = stream.take(5);
  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print("FIM");
}

int callback(int value) {
  return (value + 1) * 2;
}
