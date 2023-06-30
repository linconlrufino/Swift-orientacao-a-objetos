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
 
 
 //final class Pessoa {}
 // class Estudante: Pessoa {} -> Erro! Pessoa não pode ser herdada
 
 class Conta {
 var saldo: Double = 0.0
 var nome: String
 
 func sacar(_ valor: Double) -> Void {
 saldo -= valor
 }
 
 func depositar(_ valor: Double) -> Void {
 saldo += valor
 }
 
 init(nome: String) {
 self.nome = nome
 }
 }
 
 class ContaPoupanca : Conta {
 var possuiCartaoDebito: Bool
 
 func solicitarDebito() {
 possuiCartaoDebito = true
 print("O cliente está solicitando cartão de débito")
 }
 
 init(nome: String, possuiCartaoDebito: Bool) {
 self.possuiCartaoDebito = possuiCartaoDebito
 super.init(nome: nome)
 }
 }
 
 class ContaCorrente: Conta {
 func solicitarEmprestimo(_ valor: Double) {
 print("O cliente está solicitando um empréstimo no valor de  R$\(valor)")
 super.depositar(valor)
 }
 }
 
 var contaPoupanca = ContaPoupanca(nome: "Tolstoi", possuiCartaoDebito: false)
 contaPoupanca.depositar(50)
 print(contaPoupanca.saldo)
 contaPoupanca.solicitarDebito()
 
 var contaCorrente = ContaCorrente(nome: "Tarantino")
 contaCorrente.depositar(100)
 print(contaCorrente.saldo)
 contaCorrente.solicitarEmprestimo(200)
 print(contaCorrente.saldo)
 
 func exibeSaldoDaConta(_ conta : Conta) {
 if conta is ContaCorrente {
 print("Conta é do tipo conta corrente")
 }
 
 if let contaCorrente = conta as? ContaCorrente {
 contaCorrente.solicitarEmprestimo(200)
 }
 
 guard let contaPoupanca = conta as? ContaPoupanca else {
 return
 }
 print(contaPoupanca.possuiCartaoDebito)
 print(conta.saldo)
 }
 
 exibeSaldoDaConta(contaCorrente)
 exibeSaldoDaConta(contaPoupanca)
 
 
 //Desafio 1 - Registrando o empregado e gerente
 
 class Empregado {
 var nome: String
 var salario: Double
 
 init(nome: String, salario: Double) {
 self.nome = nome
 self.salario = salario
 }
 }
 
 class Gerente: Empregado {
 var departamento: String
 
 init(nome: String, salario: Double, departamento: String) {
 self.departamento = departamento
 super.init(nome: nome, salario: salario)
 }
 }
 
 class Vendedor: Empregado {
 func percentualComissaoSalario(_ vendas: Int) -> Double {
 var valorFixoVenda: Double = 50
 var comissao10PorCento: Double = 0.1
 
 return  self.salario + (valorFixoVenda * Double(vendas)) * comissao10PorCento
 }
 }
 
 func verificarTipo(_ empregado: Empregado){
 
 if let gerente = empregado as? Gerente {
 print("O(a) empregado(a) \(gerente.nome) é um(a) gerente e está no departamento \(gerente.departamento).")
 } else if let vendedor = empregado as? Vendedor {
 print("O(a) empregado(a) \(vendedor.nome) é um(a) vendedor.")
 } else {
 print("O(a) empregado(a) \(empregado.nome) é de um outro tipo.")
 }
 }
 
 let gerente = Gerente(nome: "Mancuello", salario: 200, departamento: "Almoxarifado")
 let vendedor = Vendedor(nome: "Cuellar", salario: 100)
 
 verificarTipo(gerente)
 verificarTipo(vendedor)
 

class Conta {
    var saldo: Double = 0.0 {
        willSet(novoValor){
            print("O Saldo está sendo alterado! O seu novo valor será de \(novoValor)")
        }
        didSet {
            print("O Saldo está sendo alterado! O seu valor antigo era de \(oldValue)")
        }
    }
    
    var nome: String
    
    static var taxaTransferencia = 0.1
    
    var negativado : Bool {
        return saldo < 0
    }
    
    func sacar(_ valor: Double) -> Void {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) -> Void {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}
var conta = Conta(nome: "Pulgar")
conta.depositar(200)

//conta.sacar(100)
//print(conta.negativado)
//conta.depositar(200)
//print(conta.negativado)
//print(Conta.taxaTransferencia)


struct Pessoa {
  var nome: String
  var idade: Int
  private(set) var altura: Double
  var peso: Double

  var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}

var pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
print(pessoa.altura) // 1.78
// pessoa.altura = 1.80 -> Erro!


//Desafio 1 - Propriedades computadas

class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade >= 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}

//Desafio 2 - Observadores de propriedades

class Empregado {
    var nome: String
    var salario: Double {
        willSet {
            if newValue > self.salario {
                print("Parabéns, você recebeu uma promoção")
            } else if newValue == self.salario {
                print("Parece que não houve uma promoção dessa vez..")
            }
        }
        didSet {
            if salario < oldValue {
                print("O novo salário não pode ser menor do que era anteriormente..")
                salario = oldValue
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

var empregado = Empregado(nome: "Rodorfo", salario: 3000)

empregado.salario = 3800
empregado.salario = 3800
empregado.salario = 3200



class Conta {
    var saldo: Double = 0.0
    var nome: String
        
    func sacar(_ valor: Double) -> Void {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) -> Void {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaPele: Conta = Conta(nome: "Pele")
var contaZico: Conta = Conta(nome: "Zico")

contaPele.depositar(200)

contaPele.transferir(contaZico, 200)

print(contaPele.saldo)
print(contaZico.saldo)

extension String {
    func contaCaracteresString() -> Int {
        return self.count
    }
}


let texto = "Zico"

print(texto.contaCaracteresString())




protocol Conta {
    var saldo: Double { get set }
    
    func sacar(_ valor: Double)
    
    func depositar(_ valor: Double)
}

class ContaCorrente: Conta {
    var saldo: Double
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init() {
        self.saldo = 0.0
    }
}

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) -> ResultadoSaque {
        
        if valor > saldo {
            return .falha(erro: "O valor é maior que o seu saldo")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento){
        switch tipoPagamento {
        case .pix: print("O pagamento será efetuado por Pix")
        case .boleto: print("O pagamento será efetuado por boleto")
        case .saldoEmConta: print("O pagamento será efetuado por saldo em conta")
        }
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")

contaGiovanna.pagamentoCartao(.saldoEmConta)

enum Mes: String {
    case janeiro = "Janeiro",
         fevereiro,
         marco,
         abril,
         maio,
         junho,
         julho,
         agosto,
         setembro,
         outubro,
         novembro,
         dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)

var feveiro: Mes = .fevereiro
print(feveiro.rawValue)


enum Moeda: Double {
    case umCentavo = 0.01,
         cincoCentavos = 0.05,
         dezCentavos = 0.1,
         vinteCincoCentavos = 0.25,
         cinquentaCentavos = 0.5
}

var moedaCincoCentavos = Moeda.cincoCentavos

print(moedaCincoCentavos.rawValue)

contaGiovanna.depositar(1000)
let resultado = contaGiovanna.sacar(100)

switch resultado {
case .sucesso(let novoValor):
    print("O saque foi um sucesso, e o saldo é de \(novoValor)")
case .falha(let erro):
    print(erro)
    
}

*/
    
//Desafio 01 - Área

protocol Area {
    var areaDaFigura: Double { get }
}

struct Quadrado: Area {
    var lado: Double
    
    var areaDaFigura: Double {
        return lado * lado
    }
    
}

struct Triangulo: Area {
    var base: Double
    var altura: Double
    
    var areaDaFigura: Double {
        return (base * altura) / 2
    }
}

let quadrado = Quadrado(lado: 7)
let triangulo = Triangulo(base: 4, altura: 3)
quadrado.areaDaFigura
triangulo.areaDaFigura


//Desafio 02 - Moedas

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]

func somaMoedas(_ listaDeMoedas: Array<Moeda>) -> Double {
    var somaTotal: Double = 0.0
    
    for moeda in listaDeMoedas {
        somaTotal += Double(moeda.rawValue)
    }
    
    return somaTotal
}

print(somaMoedas(moedas))


//Desafio 02 - Moedas - Outra implementação

//enum Moeda: Int {
//  case UmCentavo = 1
//  case CincoCentavos = 5
//  case DezCentavos = 10
//  case VinteCincoCentavos = 25
//  case CinquentaCentavos = 50
//
//  static func contarMoedas(_ moedas: [Self]) -> Int {
//    var soma = 0
//    for valor in moedas {
//      soma += valor.rawValue
//    }
//    return soma
//  }
//}
//
//let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]
//Moeda.contarMoedas(moedas)
