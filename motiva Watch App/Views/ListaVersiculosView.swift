//
//  VersiculoView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 25/11/22.
//

import SwiftUI

struct VersiculoView: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Endorfina").bold()
                Text("A endorfina é boa para o corpo pois deixa voce mais feliz e satisfeito e seguro para suas atividades e pararaparaparaparapara, rumo ao hexa! ** lalallalalallalallalaal testandoooo a scroooooolviewwwwwwwww uhuuuul")
            }
        }
        
        
    }
}

struct VersiculoView_Previews: PreviewProvider {
    static var previews: some View {
        VersiculoView()
    }
}
