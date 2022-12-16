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
                    
                    VStack(spacing: 100) {
                        HStack {
                            Image(versiculo.icone).resizable()
                                .frame(width: 30, height: 30)
                            Text("\(versiculo.tituloVersiculo)").bold()
                        }
                                             .foregroundColor(versiculo.cortexto)
                        
                    }
                    
                } .listRowBackground(versiculo.corBackground.cornerRadius(8))
                
                
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
    var turno : String
    var tituloVersiculo: String
    var descricaoVersiculo: String
    var cortexto: Color
    var corBackground: Color
    var icone: String
    
}

var versiculos = [
    ListItem(turno: "Manhã",
             tituloVersiculo: "Acorda meninaaa",
             descricaoVersiculo: "Bom dia, não deixe para amanhã o que pode ser feito hoje! Sabia que  praticar esportes pela manhã é uma maneira de melhorar o ânimo para o resto do dia. #motivador #informativo ",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Toque de intensidade",
             descricaoVersiculo: "tarde intensa? sabe o que pode ajudar? um treino INTENSO. Tudo é possível desde que você dedique seu tempo, seu corpo e sua mente. - Michael Phelps #motivaodr",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Crie um hábito",
             descricaoVersiculo: "Anoiteceu, peguei minha agua e fui relaxar: Não comece uma atividade física e pare. Persista até que isso se torne um hábito, faça parte de você. #motivador",
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Bom dia e treina",
             descricaoVersiculo: "Dormiu bem? se sim, que bom, se não… pratique exercícios físicos regularmente e sua saúde, sua disposição, seu sono e seu bom humor irão te agradecer. #informativo #motivador ",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Cochilo time",
             descricaoVersiculo: "Nada melhor do que um cochilo depois do almoço? você sabia que o ideal é esperar o período de digestão para então seguir com as atividades físicas? em média, duas horas após refeicões. #informativo #alerta ",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Série? só se for de exercício",
             descricaoVersiculo: "De noite tudo que a gente quer é assistir uma série, se já tiver se exercitado hoje, pode ser da netflix, se não, levanta e vai fazer uma série de exercicio, meu consagrado. #motivador",
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Sai preguiça",
             descricaoVersiculo: "Acordou e quer confundir a preguiça? levanta e vai se exercitar, te juro que 20 minutos depois você já nem lembra da cama quentinha…gostosinha. #motivador",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Uma boa musica ",
             descricaoVersiculo: "“e eu dizia ainda é cedo, cedo, cedo, cedo.” Estudos indicaram que ouvir música durante a prática de atividades físicas pode motivar e aumentar a intensidade e a duração do treino, melhorando em até 15% o desempenho #informativo",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Diga não a dor",
             descricaoVersiculo: "“Se você sai do treino sem sentir nenhuma dor, você está treinando errado.” MAS É CLARO QUE NÃO, caso sinta dor constante durante ou após a pratica de exercicios, procure um médico para investigar. #motivador" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    
    
    
]
