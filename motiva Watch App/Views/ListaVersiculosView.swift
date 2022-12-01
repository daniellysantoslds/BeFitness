//
//  ListaVersiculosView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 28/11/22.
//

import SwiftUI

struct ListaVersiculosView: View {
    var body: some View {
        
            List(versiculos) { versiculo in
                NavigationLink(destination:
                                DetalhesVersiculoView(versiculo: versiculo)) {
                    VStack {
                        Text("\(versiculo.tituloVersiculo)")
                    }
                }
                
            }
            
        
        
    }
}

struct ListaVersiculosView_Previews: PreviewProvider {
    static var previews: some View {
        ListaVersiculosView()
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    var tituloVersiculo: String
    var descricaoVersiculo: String
    var turno : String
}

var versiculos = [
    ListItem(tituloVersiculo: "Chapadinha",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios", turno: "Manhã"),
    
    ListItem(tituloVersiculo: "Endorfina",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios", turno: "Tarde"),
    
    ListItem(tituloVersiculo: "Chapadinha1",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios", turno: "Noite"),
    
    ListItem(tituloVersiculo: "endorfina2",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios", turno: "Manhã"),
    ListItem(tituloVersiculo: "Chapadinha",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios", turno: "Tarde"),
    
    ListItem(tituloVersiculo: "Endorfina",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios", turno: "Noite"),
    
]
