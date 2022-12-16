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
             descricaoVersiculo: "Bom dia, não deixe para amanhã o que pode ser feito hoje! Sabia que  praticar esportes pela manhã é uma maneira de melhorar o ânimo para o resto do dia. #motivador #informativo #motivador #informativo #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Olha o por do sol",
             descricaoVersiculo: "Ta um pouco estressado? Suar um pouco pode te ajudar ! Voce sabia que essa é uma otima hora para treinar #alerta #informativo #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "A mimir",
             descricaoVersiculo: "Ta na hora de desacelerar, tenta se desconectar um pouco do mundo agitado para ter uma boa noite de sono, você sabia que Dormir é mais importante que se exercitar? #informativo #alerta #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Levanta alecrim",
             descricaoVersiculo: "Com chuva ou sol, já amanheceu alecrim dourado. Priorizar a sua saúde é entender que seu corpo precisa se movimentar. Somos integrados. Sintomas emocionais se manifestam no físico. Comece a exercitar-se e os resultados virão. #alerta #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Um toque de intensidade",
             descricaoVersiculo: "Tarde intensa? sabe o que pode ajudar? um treino INTENSO. Tudo é possível desde que você dedique seu tempo, seu corpo e sua mente. - Michael Phelps #motivador #Befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Crie um hábito",
             descricaoVersiculo: "Anoiteceu, peguei minha agua e fui relaxar: Não comece uma atividade física e pare. Persista até que isso se torne um hábito, faça parte de você. #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Bom dia e treina",
             descricaoVersiculo: "Dormiu bem? se sim, que bom, se não… pratique exercícios físicos regularmente e sua saúde, sua disposição, seu sono e seu bom humor irão te agradecer.  #informativo #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Cochilo time",
             descricaoVersiculo: "Nada melhor do que um cochilo depois do almoço? você sabia que o ideal é esperar o período de digestão para então seguir com as atividades físicas? em média, duas horas após refeicões. #informativo #alerta #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Série? só se for de exercício",
             descricaoVersiculo: "De noite tudo que a gente quer é assistir uma série, se já tiver se exercitado hoje, pode ser da netflix, se não, levanta e vai fazer uma série de exercicio, meu consagrado. #motivador #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Sai preguiça",
             descricaoVersiculo: "Acordou e quer confundir a preguiça? levanta e vai se exercitar, te juro que 20 minutos depois você já nem lembra da cama quentinha…gostosinha. #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Uma boa musica ",
             descricaoVersiculo: "“E eu dizia ainda é cedo, cedo, cedo, cedo.” Estudos indicaram que ouvir música durante a prática de atividades físicas pode motivar e aumentar a intensidade e a duração do treino, melhorando em até 15% o desempenho #informativo #informativo #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Diga não a dor",
             descricaoVersiculo: "“Se você sai do treino sem sentir nenhuma dor, você está treinando errado.” MAS É CLARO QUE NÃO, caso sinta dor constante durante ou após a pratica de exercicios, procure um médico para investigar. #alerta #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Apenas gel motivador",
             descricaoVersiculo: "Você sabia que o uso de gel redutor de medidas é comprovadamente eficaz para diminuir o dinheiro em sua conta bancária?  Agora levanta, bora treinar e trabalhar, que amanheceu. #alerta #informativo #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Segura essa barra",
             descricaoVersiculo: "Me ajude a segurar essa barra que é gostar de você? Se a vida se tornar uma barra, coloque as anilhas, apoie nas costas e agache. #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Peso só nas pernocas",
             descricaoVersiculo: "Melhor peso nas pernas do que na consciência! espero que você tenha se exercitado hoje pra dormir em paz.  #motivador #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Soa que cresce",
             descricaoVersiculo: "Melhor peso nas pernas do que na consciência! espero que você tenha se exercitado hoje pra dormir em paz. #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Fofoca time",
             descricaoVersiculo: "Reclamar não queima calorias. (mas nada melhor do que uma fofoca de sobremesa né?) #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Não me ignore",
             descricaoVersiculo: "Ta na hora, ta na hora… de você se exercitar. Seja lendo ou praticando atividade fisica, espero que você tenha usado esse cerebro pra algo além do que dispensar minhas mensagens. #motivador #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Acorda e marsha",
             descricaoVersiculo: "Eu tenho que treinar na parte da manhã antes que meu cérebro entenda o que estou fazendo - Marsha Doble  #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Sustenta esse peso",
             descricaoVersiculo: "Claro que é pesado, por isso se chama peso! agora cuida as coisas não vão ficar resolvidas sozinhas. #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Sem piadas",
             descricaoVersiculo: "Boa noite sem piadinha por que tô sério! Você tem três escolhas na vida: desistir, ceder ou dar o melhor de si. Sei que você deu o melhor de si hoje, amanhã é outro dia.   #motivador #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Dieta balanceada",
             descricaoVersiculo: "“Eu não me alimento pelo gosto, mas sim pela função da comida.”Melhor ainda é se alimentar com as duas coisas né? nada de dieta do ovo por aqui hoje viu  #informativo #alerta #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Treina e come",
             descricaoVersiculo: "Boa tarde prezade, quem treina por gosto não cansa, por isso comer é tão gostoso.   #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Boa noite",
             descricaoVersiculo: "Boa noite sem piadinha por que tô sério! Você tem três escolhas na vida: desistir, ceder ou dar o melhor de si. Sei que você deu o melhor de si hoje, amanhã é outro dia.   #motivador #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Me usa",
             descricaoVersiculo: "Bom dia, sabe qual a diferença entre eu e seu corpo? nenhuma, se não formos usados, nos tornaremos obsoletos. AGORA CUIDA, benção.  #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Corrida acesivel",
             descricaoVersiculo: "Correr é o esporte mais barato que tem, a única coisa que você precisa é de um tênis  — e em alguns casos nem isso, pode correr na areia da praia. (e pode ser uma caminhadinha gostosa também)  #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Facilite, alecrim",
             descricaoVersiculo: "A redução do estresse é também um dos principais benefícios psicológicos da atividade física, facilite a vida de quem convive com você, alecrim dourado. #informativo #motivador #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    ListItem(turno: "Manhã",
             tituloVersiculo: "Vai com calma",
             descricaoVersiculo: "Bom dia abençoade, sabe a única coisa que é boa em excesso? - rsrs parei que tá cedo - , nada de exagerar no treino por que ninguém quer tomar soro. #informativo #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cormanha"),
             icone: String("solmanha")),
    
    ListItem(turno: "Tarde",
             tituloVersiculo: "Pé na rotina",
             descricaoVersiculo: "“pé na areia, academia, agua de coco, uma treinadinha” já pensou em mudar o cenário do seu treino hoje, abençoade? #motivador #befitness",
             cortexto: Color("preto0"),
             corBackground: Color("cortarde"),
             icone: String("soltarde")),
    
    ListItem(turno: "Noite",
             tituloVersiculo: "Virada de lavada",
             descricaoVersiculo: "Ao praticar exercícios, os hormônios da felicidade — serotonina, endorfina e dopamina — se encarregam de reforçar nossos sistemas de defesa, que tal um 7x1 contra a virose hoje? #alerta #informativo #motivador #befitness" ,
             cortexto: Color("preto0"),
             corBackground: Color("cornoite"),
             icone: String("solnoite")),
    
    
]
