//
//  VersiculoModel.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 25/11/22.
//

import SwiftUI

class ScrollVersiculosModel: ObservableObject {
    @Published var versiculos: [Versiculo] = []
    
    init() {
        versiculos = makeVersiculos()
    }
    
    private func makeVersiculos() -> [Versiculo] {
        return [ Versiculo(id: 0, title: "acorda"),
                 Versiculo(id: 1, title: "se motiva"),
                 Versiculo(id: 2, title: "relaxa"),
                 Versiculo(id: 3, title: "vai treinar")
                 
        ]
    }
}

class Versiculo: ObservableObject, Identifiable {
    @Published var id: Int
    @Published var title: String
    
    init(id: Int,
         title: String)
    {
        self.id = id
        self.title = title
    }
}
