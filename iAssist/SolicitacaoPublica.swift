//
//  SolicitacaoPublica.swift
//  iAssist
//
//  Created by student on 25/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation


class SolicitacaoPublica {
    
    private var titulo: String
    private var descricao: String
    private var historia: String
    private var imagem: [String] = []
    private var urgencia: Int = 0
    private var upVote: Int = 0
    private var downVote: Int = 0
    
    
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
    
}


class SolicitacaoPublicaMock {
    
    static func mockSolicitacao() -> [SolicitacaoPublica] {
        return [
            SolicitacaoPublica(titulo: "Vala impede carros de passar na rua nas Moreninhas", descricao: "Solicitacao Publica de Infraestrutura", historia: "Apos fortes chuvas, uma vala se abriu no meio da rua X nas moreninhas", imagem: "publicaInfraValaRua"),
            SolicitacaoPublica(titulo: "Iluminacao Publica danificada na Rua Y no Santo Antonio", descricao: "Solicitacao publica de Infraestrutura", historia: "Ha mais de 5 anos a rua Y no bairro Santo Antonio nao tem iluminacao publica. As lampadas estao queimadas e a prefeitura nunca foi concertar.", imagem: "publicaInfraLampada"),
            SolicitacaoPublica(titulo: "Falta de placa Pare causa novo acidente", descricao: "Solicitacao Publica de Sinalizacao", historia: "O cruzamento das ruas A e B no bairro Panama nao possui sinalizacao e ja causou varios acidentes ao longo dos anos", imagem: "publicaSinalizacaoPlacaPare"),
            SolicitacaoPublica(titulo: "Posto de saude em condicoes precarias", descricao: "Solicitacao Publica de Investimento", historia: "Ha 3 anos o posto de saude do bairro Tijuca esta em condicoes precarias, com infiltracoes e paredes descascando", imagem: "publicaInvestimentoPosto"),
            
        ]
        
    }
}
