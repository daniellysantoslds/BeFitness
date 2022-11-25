//
//  ListaVersiculoModel.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 25/11/22.
//

import SwiftUI

class ListaVersiculoModel {
    
    let versiculos: [VersiculoItemModel]
    
    init(versiculos: [VersiculoItemModel]) {
        self.versiculos = versiculos
    }
    
    static func VersiculoUm() -> ListaVersiculoModel {
        
        let testeUm: [VersiculoModel] = [
        VersiculoModel(titulo: "Endorfina", descricao: "Ta muiiiitoooooo legal")]
        
   
        let testandoUm: VersiculoItemModel = VersiculoItemModel(versiculoModel: testeUm)
        
        return ListaVersiculoModel(versiculos: [testandoUm])
    }
    
    
//    let versiculosDois: [VersiculoItemModel]
//
//    init(versiculosDois: [VersiculoItemModel]) {
//        self.versiculosDois = versiculosDois
//    }
    
    
    
    
}
