
export class Conta {
  #saldo = 0;

  constructor(numero, titular) {
    this.numero = numero;
    this.titular = titular;
  }

  get saldo() {
    return this.#saldo;
  }

  depositar(valor) {
    if (valor <= 0) {
      throw new Error('O valor do depósito deve ser positivo.');
    }

    this.#saldo += valor;
  }

  sacar(valor) {
    if (valor <= 0 || valor > this.#saldo) {
      throw new Error('Saque inválido.');
    }

    this.#saldo -= valor;
  }
}
