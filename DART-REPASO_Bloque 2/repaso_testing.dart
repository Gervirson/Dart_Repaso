import 'package:test/test.dart';

int sumar(int a, int b) => a +  b;

void main() {

  test('La suma debe funcionar correctamente', () {
    expect(sumar(2, 3), equals(5)); // definimos cómo debe comportarse
  });

  test('La suma con cero debe devolver el mismo número', () {
    expect(sumar(10, 0), equals(10));
  });
}
