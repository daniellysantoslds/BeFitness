//
//  VersiculoModel.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 25/11/22.
//

import SwiftUI

class VersiculoModel: Hashable {
    let id: UUID
    let titulo: String
    let descricao: String
    
    init(titulo: String, descricao: String) {
        self.id = UUID()
        self.titulo = titulo
        self.descricao = descricao
    }
    
    static func == (lhs:VersiculoModel, rhs: VersiculoModel) -> Bool {
        return lhs.id == rhs.id
        
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(titulo)
        hasher.combine(descricao)
    }
}
