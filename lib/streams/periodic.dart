Future<void> main() async {
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(
    interval,
    callback,
  );

// O for fica aguardando a stream enviar algo pra ser executado.
// Sempre que a stream receber algo, o for será executado.
  await for (var i in stream) {
    print(i);
  }

  print("FIM");
}

int callback(int value) {
  return (value + 1) * 2;
}
