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
    ListItem(tituloVersiculo: "Acorda meninaaa",
             descricaoVersiculo: "Bom dia, não deixe para amanhã o que pode ser feito hoje! Sabia que  praticar esportes pela manhã é uma maneira de melhorar o ânimo para o resto do dia. ", turno: "Manhã"),
    
    ListItem(tituloVersiculo: "Olha o por do sol",
             descricaoVersiculo: "Ta um pouco estressado? Suar um pouco pode te ajudar ! Voce sabia que durante a tarde voce ja ingeriu  duas grandes refeições e acumulou um bom aporte de energia, o que possibilita manter boa intensidade no exercício e otimizar resultados, tanto para o emagrecimento quanto para o aumento de massa muscular.", turno: "Tarde"),
    
    ListItem(tituloVersiculo: "A mimir",
             descricaoVersiculo: "Ta na hora de desacelerar, tenta se desconectar um pouco do mundo agitado para ter uma boa noite de sono, você sabia que Dormir é mais importante que se exercitar?Se, para se exercitar de manhã, for preciso fazer um corte dolorido nas horas de sono, é melhor dormir mesmo uma horinha a mais e encaixar seus treinos na hora do almoço ou após o trabalho.", turno: "Noite"),
    ListItem(tituloVersiculo: "Acorda meninaaa",
             descricaoVersiculo: "Bom dia, hoje é um belo dia para nao deixar para a próxima segunda aquilo que pode ser feito hoje! Sabia que  praticar esportes pela manhã é uma maneira de melhorar o ânimo para o dia que virá pela frente.", turno: "Manhã"),
    
    ListItem(tituloVersiculo: "Olha o por do sol",
             descricaoVersiculo: "Ta um pouco estressado? Suar um pouco pode te ajudar ! Voce sabia que durante a tarde voce ja ingeriu  duas grandes refeições e acumulou um bom aporte de energia, o que possibilita manter boa intensidade no exercício e otimizar resultados, tanto para o emagrecimento quanto para o aumento de massa muscular.", turno: "Tarde"),
    
    ListItem(tituloVersiculo: "A mimir",
             descricaoVersiculo: "Ta na hora de desacelerar, tenta se desconectar um pouco do mundo agitado para ter uma boa noite de sono, você sabia que Dormir é mais importante que se exercitar?Se, para se exercitar de manhã, for preciso fazer um corte dolorido nas horas de sono, é melhor dormir mesmo uma horinha a mais e encaixar seus treinos na hora do almoço ou após o trabalho.", turno: "Noite"),
    
    
    
]
