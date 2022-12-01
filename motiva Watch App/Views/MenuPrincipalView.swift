//
//  MenuPrincipalView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 24/11/22.
//

import SwiftUI
import UserNotifications

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
            
            
        }.onAppear(perform: {
            noMoreOnboarding()
            setNotifications()
        })
        
    }
    
    func noMoreOnboarding (){
        UserDefaults.standard.set(true, forKey: "OnboardingViewed")
    }
    func setNotifications() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (success, error) in
            if success{
                morningNotification()
                afternoonNotification()
                nightNotification()
                print("All set")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    func morningNotification() {
        print("a")
        let contentMorning = UNMutableNotificationContent()
        contentMorning.title = versiculos[UserDefaults.standard.integer(forKey: "MorningKey")].tituloVersiculo
        contentMorning.subtitle = versiculos[UserDefaults.standard.integer(forKey: "MorningKey")].descricaoVersiculo
        contentMorning.sound = .default
        contentMorning.categoryIdentifier = "myCategory"
        UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "MorningKey") + 3, forKey: "MorningKey")
    }
    func afternoonNotification() {
        print("b")
    }
    func nightNotification() {
        print("c")
    }
}

struct MenuPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        MenuPrincipalView()
    }
}
