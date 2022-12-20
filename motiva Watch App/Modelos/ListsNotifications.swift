//
//  Notifications.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 19/12/22.
//

import SwiftUI

struct ListNotifications: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        ListNotifications()
    }
}


struct ListMorning: Identifiable {
    var id = UUID()
    var titulo: String
    var descricao: String
    
}

var morning = [
    
    ListMorning(titulo: "Acorda meninaaa",
                descricao: "Bom dia, não deixe para amanhã o que pode ser feito hoje! Sabia que  praticar esportes pela manhã é uma maneira de melhorar o ânimo para o resto do dia. #motivador #informativo #motivador #informativo #befitness"),
    
    ListMorning(titulo: "Levanta alecrim",
                descricao: "Com chuva ou sol, já amanheceu alecrim dourado. Priorizar a sua saúde é entender que seu corpo precisa se movimentar. Somos integrados. Sintomas emocionais se manifestam no físico. Comece a exercitar-se e os resultados virão. #alerta #motivador #befitness"),
    
    ListMorning(titulo: "Um toque de intensidade",
                descricao: "Tarde intensa? sabe o que pode ajudar? um treino INTENSO. Tudo é possível desde que você dedique seu tempo, seu corpo e sua mente. - Michael Phelps #motivador #Befitness"),
    
    ListMorning(titulo: "Bom dia e treina",
                descricao: "Dormiu bem? se sim, que bom, se não… pratique exercícios físicos regularmente e sua saúde, sua disposição, seu sono e seu bom humor irão te agradecer.  #informativo #motivador #befitness"),
    
    ListMorning(titulo: "Sai preguiça",
                descricao: "Acordou e quer confundir a preguiça? levanta e vai se exercitar, te juro que 20 minutos depois você já nem lembra da cama quentinha…gostosinha. #motivador #befitness"),
    
    ListMorning(titulo: "Apenas gel motivador",
                descricao: "Você sabia que o uso de gel redutor de medidas é comprovadamente eficaz para diminuir o dinheiro em sua conta bancária?  Agora levanta, bora treinar e trabalhar, que amanheceu. #alerta #informativo #befitness"),
    
    ListMorning(titulo: "Soa que cresce",
                descricao: "Melhor peso nas pernas do que na consciência! espero que você tenha se exercitado hoje pra dormir em paz. #motivador #befitness"),
    
    ListMorning(titulo: "Acorda e marsha",
                descricao: "Eu tenho que treinar na parte da manhã antes que meu cérebro entenda o que estou fazendo - Marsha Doble  #motivador #befitness"),
    
    ListMorning(titulo: "Dieta balanceada",
                descricao: "“Eu não me alimento pelo gosto, mas sim pela função da comida.”Melhor ainda é se alimentar com as duas coisas né? nada de dieta do ovo por aqui hoje viu  #informativo #alerta #befitness"),
    
    ListMorning(titulo: "Me usa",
                descricao: "Bom dia, sabe qual a diferença entre eu e seu corpo? nenhuma, se não formos usados, nos tornaremos obsoletos. AGORA CUIDA, benção.  #motivador #befitness"),
    
    
    ListMorning(titulo: "Vai com calma",
                descricao: "Bom dia abençoade, sabe a única coisa que é boa em excesso? - rsrs parei que tá cedo - , nada de exagerar no treino por que ninguém quer tomar soro. #informativo #motivador #befitness"),
    
    
    ListMorning(titulo: "Vai com calma",
                descricao: "Bom dia abençoade, sabe a única coisa que é boa em excesso? - rsrs parei que tá cedo - , nada de exagerar no treino por que ninguém quer tomar soro. #informativo #motivador #befitness"),
    
  
]


struct ListAfternoon: Identifiable {
    var id = UUID()
    var titulo: String
    var descricao: String
    
}

var afternoon = [
    
    ListAfternoon(titulo: "Olha o por do sol",
                  descricao: "Ta um pouco estressado? Suar um pouco pode te ajudar ! Voce sabia que essa é uma otima hora para treinar #alerta #informativo #befitness"),
    
    ListAfternoon(titulo: "Um toque de intensidade",
                  descricao: "Tarde intensa? sabe o que pode ajudar? um treino INTENSO. Tudo é possível desde que você dedique seu tempo, seu corpo e sua mente. - Michael Phelps #motivador #Befitness"),
    
    ListAfternoon(titulo: "Cochilo time",
                  descricao: "Nada melhor do que um cochilo depois do almoço? você sabia que o ideal é esperar o período de digestão para então seguir com as atividades físicas? em média, duas horas após refeicões. #informativo #alerta #befitness"),
    
    ListAfternoon(titulo: "Uma boa musica",
                  descricao: "“E eu dizia ainda é cedo, cedo, cedo, cedo.” Estudos indicaram que ouvir música durante a prática de atividades físicas pode motivar e aumentar a intensidade e a duração do treino, melhorando em até 15% o desempenho #informativo #informativo #befitness"),
    
    
    ListAfternoon(titulo: "Fofoca time",
                  descricao: "Reclamar não queima calorias. (mas nada melhor do que uma fofoca de sobremesa né?) #motivador #befitness"),
    
    ListAfternoon(titulo: "Sustenta esse peso",
                  descricao: "Claro que é pesado, por isso se chama peso! agora cuida as coisas não vão ficar resolvidas sozinhas. #motivador #befitness"),
    
    
    ListAfternoon(titulo: "Treina e come",
                  descricao: "Boa tarde prezade, quem treina por gosto não cansa, por isso comer é tão gostoso.   #motivador #befitness"),
    
    ListAfternoon(titulo: "Corrida acesivel",
                  descricao: "Correr é o esporte mais barato que tem, a única coisa que você precisa é de um tênis  — e em alguns casos nem isso, pode correr na areia da praia. (e pode ser uma caminhadinha gostosa também)  #motivador #befitness"),
    
    ListAfternoon(titulo: "Pé na rotina",
                  descricao: "“pé na areia, academia, agua de coco, uma treinadinha” já pensou em mudar o cenário do seu treino hoje, abençoade? #motivador #befitness"),
    
]


struct ListNight: Identifiable {
    var id = UUID()
    var titulo: String
    var descricao: String
    
}

var night = [
    ListNight(titulo: "A mimir",
              descricao: "Ta na hora de desacelerar, tenta se desconectar um pouco do mundo agitado para ter uma boa noite de sono, você sabia que Dormir é mais importante que se exercitar? #informativo #alerta #befitness"),
    
    ListNight(titulo: "Crie um hábito",
              descricao: "Anoiteceu, peguei minha agua e fui relaxar: Não comece uma atividade física e pare. Persista até que isso se torne um hábito, faça parte de você. #motivador #befitness"),
    
    ListNight(titulo: "Série? só se for de exercício",
              descricao: "De noite tudo que a gente quer é assistir uma série, se já tiver se exercitado hoje, pode ser da netflix, se não, levanta e vai fazer uma série de exercicio, meu consagrado. #motivador #befitness"),
    
    ListNight(titulo: "Diga não a dor",
              descricao: "“Se você sai do treino sem sentir nenhuma dor, você está treinando errado.” MAS É CLARO QUE NÃO, caso sinta dor constante durante ou após a pratica de exercicios, procure um médico para investigar. #alerta #befitness"),
    
    ListNight(titulo: "Peso só nas pernocas",
              descricao: "Melhor peso nas pernas do que na consciência! espero que você tenha se exercitado hoje pra dormir em paz.  #motivador #befitness"),
    
    ListNight(titulo: "Não me ignore",
              descricao: "Ta na hora, ta na hora… de você se exercitar. Seja lendo ou praticando atividade fisica, espero que você tenha usado esse cerebro pra algo além do que dispensar minhas mensagens. #motivador #befitness"),
    
    
    ListNight(titulo: "Sem piadas",
              descricao: "TBoa noite sem piadinha por que tô sério! Você tem três escolhas na vida: desistir, ceder ou dar o melhor de si. Sei que você deu o melhor de si hoje, amanhã é outro dia.   #motivador #befitness"),
    
    ListNight(titulo: "Boa noite",
              descricao: "Boa noite sem piadinha por que tô sério! Você tem três escolhas na vida: desistir, ceder ou dar o melhor de si. Sei que você deu o melhor de si hoje, amanhã é outro dia.   #motivador #befitness"),
    
    
    ListNight(titulo: "Facilite, alecrim",
              descricao: "A redução do estresse é também um dos principais benefícios psicológicos da atividade física, facilite a vida de quem convive com você, alecrim dourado. #informativo #motivador #befitness"),
    
    
    ListNight(titulo: "Pé na rotina",
              descricao: "“pé na areia, academia, agua de coco, uma treinadinha” já pensou em mudar o cenário do seu treino hoje, abençoade? #motivador #befitness"),
    
    
]
