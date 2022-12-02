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
        
        VStack(spacing: 8) {
            
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 10)
                HStack {
                    Spacer()
                        .frame(width: 10)
                    Image(versiculo.icone)
                    Spacer()
                }
                

                HStack {
                    Spacer()
                        .frame(width: 10)
                    Text(versiculo.tituloVersiculo)
                        .foregroundColor(Color.black)
                        .bold()
                        .font(.system(size: 18))
                    
                    Spacer()
                }
                
            }.frame(width: WKInterfaceDevice.current().screenBounds.width)
                .background(versiculo.corBackground)
            
            ScrollView {
                Text(versiculo.descricaoVersiculo)
                Spacer()
                
            }
            
            
            
        }//.frame(height: UIScreen.main.bounds.height )
        
        
        
        
    }
}

struct DetalhesVersiculoView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesVersiculoView(versiculo: versiculos[0])
    }
}
