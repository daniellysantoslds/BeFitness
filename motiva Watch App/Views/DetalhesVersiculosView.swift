//
//  VersiculoView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 25/11/22.
//

import SwiftUI

struct DetalhesVersiculoView: View {
    
    var versiculo: ListItem = versiculos[0]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text(versiculo.tituloVersiculo).bold()
            Text(versiculo.descricaoVersiculo)
        }
        
        
        
    }
}

struct DetalhesVersiculoView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesVersiculoView(versiculo: versiculos[0])
    }
}
