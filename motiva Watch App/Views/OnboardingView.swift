//
//  OnboardingView.swift
//  motiva Watch App
//
//  Created by Jpsmor on 23/11/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var onboardingEnded = 1.0
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    //ext("Befitness").bold()
                    TabView {
                        VStack {
                            Image("icone")
                                .resizable()
                                .frame(width: 70, height: 70)
                            Text("Befitness").bold()
                          
                        }
                        VStack {
//                            Spacer(minLength: 10)
                            Image("humoronboarding")
                                .imageScale(.large)
                                .frame(width: 70, height:70)
                                
                            Text("Nos conte sobre seu humor")
                        }
                        VStack {
                            Image("imagemnotificacao")
                                //.resizable()
                            //.imageScale(.small)
                                .frame(width: 70, height:70)
                            Text("Receba notificações motivacionais diariamnete")
                                
                        }
                        VStack {
                            Text("Pronto! Vamos começar?")
        //                    NavigationLink (destination: ContentView()) {
        //                        Image(systemName: "globe")
        //                    }
                            Button(action: {onboardingEnded = 0.0
                            }, label: {Text("Começar?")})
                        }
                    }
                }
                .opacity(onboardingEnded)
                if onboardingEnded != 1.0 {
                    NavigationLink(destination: MenuPrincipalView()        .navigationBarBackButtonHidden(true)) {
                        Text("vamo simbora")
                    }
                }
            }
        }

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
