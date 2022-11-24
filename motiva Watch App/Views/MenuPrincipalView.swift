//
//  MenuPrincipalView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 24/11/22.
//

import SwiftUI

struct MenuPrincipalView: View {
    var body: some View {
        //Text("aqui é a tela de menu principal")
        VStack {
            BotaoPrincipalComponenteView(texto: "notas", corTexto: Color.white)
            
            BotaoPrincipalComponenteView(texto: "dias", corTexto: Color.white)
        }
        
    }
}

struct MenuPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        MenuPrincipalView()
    }
}
