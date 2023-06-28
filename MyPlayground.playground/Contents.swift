/*
 
struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String

    mutating func sacar(_ valor: Double) -> Void {
        saldo -= valor
    }

    mutating func depositar(_ valor: Double) -> Void {
        saldo += valor
    }
}

class ContaCorrenteClass {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) -> Void {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) -> Void {
        saldo += valor
    }
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
}
//
//var contaCorrenteUsuarioJumenec: ContaCorrente = ContaCorrente(nome: "Jumenec")
//print(contaCorrenteUsuarioJumenec.saldo)
//contaCorrenteUsuarioJumenec.deposita(10000)
//print(contaCorrenteUsuarioJumenec.saldo)
//
//var contaCorrenteUsuarioCenas: ContaCorrente = ContaCorrente(nome: "Cenas")
//contaCorrenteUsuarioCenas.deposita(200)
//print(contaCorrenteUsuarioCenas.saldo)
//contaCorrenteUsuarioCenas.sacar(100)
//print(contaCorrenteUsuarioCenas.saldo)
  
var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
var contaCorrenteStruct02 = contaCorrenteStruct01
contaCorrenteStruct01.depositar(100)
contaCorrenteStruct02.depositar(50)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")
print("Saldo da conta corrente struct 02 = \(contaCorrenteStruct02.saldo)")

let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
let contaCorrenteClasse02 = contaCorrenteClasse01
contaCorrenteClasse01.depositar(60)
contaCorrenteClasse02.depositar(100)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")
print("Saldo da conta corrente classe 02 = \(contaCorrenteClasse02.saldo)")

*/


//Desafio 1 - Calculadora

class Calculadora {
    
    var numero1: Double
    var numero2: Double
    
    func soma() -> Double {
        return numero1 + numero2
    }
    
    func subtracao() -> Double {
        return numero1 - numero2
    }
    
    func multiplicacao() -> Double {
        return numero1 * numero2
    }
    
    func divisao() -> Double {
        return numero1 / numero2
    }
    
    init(numero1: Double, numero2: Double ){
        self.numero1 = numero1
        self.numero2 = numero2
    }
}

var calculadora: Calculadora = Calculadora(numero1: 6, numero2: 4)

print("Soma: \(calculadora.soma())")
print("Subtração: \(calculadora.subtracao())")
print("Multiplicação: \(calculadora.multiplicacao())")
print("Divisão: \(calculadora.divisao())")
    

//Desafio 2 - Restaurante

struct Restaurante {
    var nome: String
    var tipoDeComida: String
    var numeroDePedidos: Int = 0
    
    mutating func recebePedido() -> Void {
        self.numeroDePedidos += 1
    }
    
    func calculaTotalPedidos() -> Double {
        var valorFixo: Double = 35
        return Double(self.numeroDePedidos) * valorFixo
    }
}

var restautante = Restaurante(nome: "Little Boy", tipoDeComida: "Doce")

restautante.recebePedido()
restautante.recebePedido()
restautante.recebePedido()
restautante.recebePedido()

print("Valor total dos pedidos: R$\(restautante.calculaTotalPedidos())")


//Desafio 3 - Retângulo


class Retangulo {
    
    var base: Double
    var altura: Double
    
    func calcularArea() -> Double {
        return base * altura
    }
    
    func calcularperimetro() -> Double {
        return base * 2 + altura * 2
    }
    
    init(base: Double, altura: Double){
        self.base = base
        self.altura = altura
    }
}

var retangulo: Retangulo = Retangulo(base: 10, altura: 20)

print("Area: \(retangulo.calcularArea())")
print("Perimetro: \(retangulo.calcularperimetro())")

