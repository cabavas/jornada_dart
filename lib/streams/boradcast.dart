Future<void> main() async {
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(
    interval,
    callback,
  );

  // O "asBroadcastStream" permite mais de um listener para a stream
  // O take interrompe a escuta dos listeners, porém a stream continua
  stream = stream.asBroadcastStream().take(3);


  stream = stream.take(5);
  stream.listen((numero) {
    print('Listen 1 value: $numero');
  });

  stream.listen((numero) {
    print('Listen 2 value: $numero');
  });

  print("FIM");
}

int callback(int value) {
  return (value + 1) * 2;
}
