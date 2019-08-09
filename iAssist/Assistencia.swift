//
//  Assistencia.swift
//  iAssist
//
//  Created by student on 25/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation



class Assistencia {
    
    
    //Props
    private var titulo: String
    private var descricao: String
    private var historia: String
    private var imagem: [String] = ["", "", "", "", ""]
    private var urgencia: Int = 0
    private var upVote: Int = 0
    private var downVote: Int = 0
    
    
    private var donation: Donation? = nil
    
    
    //Constructors
    init(titulo: String, descricao: String, historia: String, donation: Donation) {
        self.titulo = titulo
        self.descricao = descricao
        self.historia = historia
        self.donation = donation
        self.imagem[0] = "default"
    }
    
    init(titulo: String, descricao: String, historia: String, imagem: String, donation: Donation) {
        
        self.imagem[0] = imagem
        
        self.titulo = titulo
        self.descricao = descricao
        self.historia = historia
        self.donation = donation
    }
    
    
    init(titulo: String, descricao: String, historia: String) {
        self.titulo = titulo
        self.descricao = descricao
        self.historia = historia
        self.imagem[0] = "default"
    }
    
    init(titulo: String, descricao: String, historia: String, imagem: String) {
        self.titulo = titulo
        self.descricao = descricao
        self.historia = historia
        self.imagem[0] = imagem
    }
    
    ///Getters
    
    func getTitulo() -> String {
        return self.titulo
    }
    func getDescricao() -> String {
        return self.descricao
    }
    func getHistoria() -> String {
        return self.historia
    }
    func getImagem(index: Int) -> String {
        return self.imagem[index]
    }
    func getUrgencia() -> Int {
        return self.urgencia
    }
    func getUpVote() -> Int {
        return self.upVote
    }
    func getDownVote() -> Int {
        return self.downVote
    }
    
    func getDonation() -> Donation {
         return self.donation!
    }
    
    ///Setters
    
    func setTitulo(titulo: String) {
         self.titulo = titulo
    }
    func setDescricao(descricao: String) {
         self.descricao = descricao
    }
    func setHistoria(historia: String) {
         self.historia = historia
    }
    func setImagem(index: Int, imagem: String)  {
         self.imagem[index] = imagem
    }
    func setUrgencia(urgencia: Int) {
         self.urgencia = urgencia
    }
    func setUpVote() {
         self.upVote += 1
    }
    func setDownVote() {
         self.downVote += 1
    }
    
    func setDonation(donation: Donation)  {
         self.donation = donation
    }
    
    
}


class AssistenciaMock {
    
    var arrayAssistencia = [Assistencia]()
    
    func addAssistencia(_ titulo: String,_ descricao: String,_ historia: String){
        
        //arrayAssistencia.append()
    }
    
    static func mockAssistencias() -> [Assistencia] {
        return [
            Assistencia(titulo: "Familia no Itamaraty necessita advogado", descricao: "Solicitacao de Assistencia Juridica", historia: "A Empregada domestica Juruminha de Souza foi demitida apos sofrer um acidente de trabalho e necessita de assistencia Juridica"),
            Assistencia(titulo: "Mae no Caioba necessita leite NAN", descricao: "Solicitacao de Doacao", historia: "Apos perder o emprego a dona de casa Claudete Pereira ficou sem condicoes de comprar leite para o seu recenm nascido Felipe.", donation: Donation(items: ["Leite NAN"])),
            Assistencia(titulo: "Familia teve casa incendiada ", descricao: "Solicitacao de Abrigo", historia: "Apos deixar velas acesar por ter a fiacao da casa roubada, a casa foi incendiada num acidente com as velas", imagem: "assistenciaAbrigoCasaIncendiada"),
            Assistencia(titulo: "Crianca necessita de materiais escolares", descricao: "Solicitacao de Valores", historia: "Apos ficar sem emprego , seu Jao nao tem dinheiro para comprar o material de seus 3 filhos", imagem: "assistenciaValorMaterialEscolar", donation: Donation(value: 50.00))
            
            
        ]
    }
}
