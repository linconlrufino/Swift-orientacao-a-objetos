struct ContaCorrente {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) -> Void {
        saldo -= valor
    }
    
    mutating func deposita(_ valor: Double) -> Void {
        saldo += valor
    }
}

var contaCorrenteUsuarioJumenec: ContaCorrente = ContaCorrente(nome: "Jumenec")
print(contaCorrenteUsuarioJumenec.saldo)
contaCorrenteUsuarioJumenec.deposita(10000)
print(contaCorrenteUsuarioJumenec.saldo)

var contaCorrenteUsuarioCenas: ContaCorrente = ContaCorrente(nome: "Cenas")
contaCorrenteUsuarioCenas.deposita(200)
print(contaCorrenteUsuarioCenas.saldo)
contaCorrenteUsuarioCenas.sacar(100)
print(contaCorrenteUsuarioCenas.saldo)
