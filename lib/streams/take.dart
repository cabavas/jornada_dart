Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(
    interval,
    callback,
  );

  // O take executa o for um limite de vezes
  stream = stream.take(5);

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
