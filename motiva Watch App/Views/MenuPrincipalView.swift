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
        VStack(spacing: 12) {
                NavigationLink (destination: ListaVersiculosView()){
                    
                    HStack(spacing: 8) {
                       
                        Image(systemName: "book.circle").foregroundColor(Color("Amarelo -0"))
                            .font(.system(size: 24))
                        Text("Versiculos")
                           
                    }
                    
              
                }
                
                NavigationLink (destination: AcompanhamentoView()){
                    
                    HStack(spacing: 8) {
                        
                        Image(systemName: "person.badge.clock").foregroundColor(Color("Azul + 1"))
                            .font(.system(size: 24))
                        Text("Acompanhamento")
                    }
                   
                   
                    
                }
            }
            
        
    }
}

struct MenuPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        MenuPrincipalView()
    }
}
