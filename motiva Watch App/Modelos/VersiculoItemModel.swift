//
//  VersiculoItemModel.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 25/11/22.
//

import SwiftUI

class VersiculoItemModel: Hashable {
    static func == (lhs: VersiculoItemModel, rhs: VersiculoItemModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id: UUID
    let versiculoModel: [VersiculoModel]
    
    init(versiculoModel: [VersiculoModel]) {
        self.id = UUID()
        self.versiculoModel = versiculoModel
    }
//    static func == (lhs: VersiculoModel, rhs: VersiculoModel) -> Bool {
//        return lhs.id == rhs.id
//    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(versiculoModel)
    }
}
