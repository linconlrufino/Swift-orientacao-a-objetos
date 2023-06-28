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
