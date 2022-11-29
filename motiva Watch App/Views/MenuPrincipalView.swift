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
        NavigationView {
            VStack {
                NavigationLink (destination: ListaVersiculosView()){
                    
                    Text("notas")
                    
                }
                NavigationLink (destination: ContentView()){
                    
                    Text("dias")
                    
                }
            }
            
            
        }.onAppear(perform: noMoreOnboarding)
        
    }
    
    func noMoreOnboarding () {
        UserDefaults.standard.set(true, forKey: "OnboardingViewed")
    }
    
}

struct MenuPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        MenuPrincipalView()
    }
}
