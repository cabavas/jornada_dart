Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(
    interval,
    callback,
  );

  stream = stream.take(5);

  // Aguarda a stream terminar e põe todo o resultado em uma lista.
  final data = await stream.toList();
  print(data);
  print("FIM");
}

int callback(int value) {
  return (value + 1) * 2;
}
