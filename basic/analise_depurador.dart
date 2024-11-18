import "dart:math";

void main() {
 print(bhaskara(1, "-8", 12));
}

Set<double> bhaskara(a, b, c) {
 double delta = calcularDelta(a, b, c);
 double resultado1 = ((b * -1) + delta) / (2 * a);
 double resultado2 = ((b * -1) - delta) / (2 * a);
 return [resultado1, resultado2].toSet();
}

calcularDelta(a, b, c) {
 double resultado = b * b;
 resultado = resultado - (4 * a * c);
 resultado = pow(resultado, (1 / 2)).toDouble();
 return resultado;
}