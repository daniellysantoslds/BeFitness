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
                    Text("Holy Bible")
                    TabView {
                        VStack {
                            Image(systemName: "star")
                                .imageScale(.large)
                            Text("Check-in")
                        }
                        VStack {
                            Image(systemName: "heart")
                                .imageScale(.large)
                            Text("Vai rolar versiculos")
                        }
                        VStack {
                            Image(systemName: "eye")
                                .imageScale(.large)
                            Text("Bata suas metas")
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
