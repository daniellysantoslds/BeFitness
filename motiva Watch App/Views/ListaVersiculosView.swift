//
//  ListaVersiculosView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 28/11/22.
//

import SwiftUI

struct ListaVersiculosView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetalhesVersiculoView())
            List(versiculos) { versiculo in
                Text("\(versiculo.tituloLista)")
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
    var tituloLista: String
    var tituloVersiculo: String
    var descricaoVersiculo: String
}

var versiculos = [
    ListItem(tituloLista: "Endorfina1",
             tituloVersiculo: "Chapadinha",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    
    ListItem(tituloLista: "Chapadinha",
             tituloVersiculo: "Endorfina",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    
    ListItem(tituloLista: "cansada",
             tituloVersiculo: "Chapadinha1",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    
    ListItem(tituloLista: "animada",
             tituloVersiculo: "endorfina2",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    ListItem(tituloLista: "Endorfina1",
             tituloVersiculo: "Chapadinha",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    
    ListItem(tituloLista: "Chapadinha",
             tituloVersiculo: "Endorfina",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    
    ListItem(tituloLista: "cansada",
             tituloVersiculo: "Chapadinha1",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    
    ListItem(tituloLista: "animada",
             tituloVersiculo: "endorfina2",
             descricaoVersiculo: "Aqui voce vai ficar chapadaaa de exercicios"),
    
]
