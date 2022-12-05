//
//  OnboardingView.swift
//  motiva Watch App
//
//  Created by Jpsmor on 23/11/22.
//

import SwiftUI
import UserNotifications

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
                            Text("Receba notificações motivacionais diariamente")
                            
                        }
                        VStack {
                            Text("Pronto! Vamos começar?")
                            //                    NavigationLink (destination: ContentView()) {
                            //                        Image(systemName: "globe")
                            //                    }
                            Button(action: {onboardingEnded = 0.0
                            }, label: {Text("Começar!")})
                        }
                    }
                }
                .opacity(onboardingEnded)
                if onboardingEnded != 1.0 {
                    VStack {
                        Text("Vamos precisar da sua autorização para te mandar as mensagens mais motivadoras do seu dia!")
                        NavigationLink(destination: HumorFromOnboardingView()        .navigationBarBackButtonHidden(true)) {
                            Text("Entendi!")
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            noMoreOnboarding()
                            setNotifications()
                            //                            requestBackgroundTask()
                            getStarterDate()
                        })
                    }
                }
            }
        }
        
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
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    func morningNotification() {
        UserDefaults.standard.set(0, forKey: "morningNotification")
        let contentMorning = UNMutableNotificationContent()
        contentMorning.title = versiculos[UserDefaults.standard.integer(forKey: "morningNotification")].tituloVersiculo
        contentMorning.subtitle = versiculos[UserDefaults.standard.integer(forKey: "morningNotification")].descricaoVersiculo
        //        contentMorning.title = versiculos[contentNumber].tituloVersiculo
        //        contentMorning.subtitle = versiculos[contentNumber].descricaoVersiculo
        contentMorning.sound = .default
        //        guard let imageURL = Bundle.main.url(forResource: "solmanha", withExtension: "png") else { return }
        //        let attachment = try! UNNotificationAttachment(identifier: "solmanha", url: imageURL, options: .none)
        //        contentMorning.attachments = [attachment]
        contentMorning.categoryIdentifier = "morningNotification"
        let morningCategory = UNNotificationCategory(identifier: "morningNotification", actions: [], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([morningCategory])
        var dateInfo = DateComponents()
        dateInfo.hour = 08
        dateInfo.minute = 30
        let morningTrigger = UNCalendarNotificationTrigger(dateMatching: dateInfo, repeats: true)
        //        let morningTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: false)
        let requestMorning = UNNotificationRequest(identifier: "morningNotification", content: contentMorning, trigger: morningTrigger)
        UNUserNotificationCenter.current().add(requestMorning)
        
        
    }
    func afternoonNotification() {
        UserDefaults.standard.set(1, forKey: "afternoonNotification")
        let contentAfternoon = UNMutableNotificationContent()
        contentAfternoon.title = versiculos[UserDefaults.standard.integer(forKey: "afternoonNotification")].tituloVersiculo
        contentAfternoon.subtitle = versiculos[UserDefaults.standard.integer(forKey: "afternoonNotification")].descricaoVersiculo
        //        contentMorning.title = versiculos[contentNumber].tituloVersiculo
        //        contentMorning.subtitle = versiculos[contentNumber].descricaoVersiculo
        contentAfternoon.sound = .default
        //        guard let imageURL = Bundle.main.url(forResource: "solmanha", withExtension: "png") else { return }
        //        let attachment = try! UNNotificationAttachment(identifier: "solmanha", url: imageURL, options: .none)
        //        contentMorning.attachments = [attachment]
        contentAfternoon.categoryIdentifier = "afternoonNotification"
        let afternoonCategory = UNNotificationCategory(identifier: "afternoonNotification", actions: [], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([afternoonCategory])
        var dateInfo = DateComponents()
        dateInfo.hour = 15
        dateInfo.minute = 00
        let afternoonTrigger = UNCalendarNotificationTrigger(dateMatching: dateInfo, repeats: true)
        //let morningTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: false)
        let requestAfternoon = UNNotificationRequest(identifier: "afternoonNotification", content: contentAfternoon, trigger: afternoonTrigger)
        UNUserNotificationCenter.current().add(requestAfternoon)
    }
    func nightNotification() {
        UserDefaults.standard.set(2, forKey: "nightNotification")
        let contentNight = UNMutableNotificationContent()
        contentNight.title = versiculos[UserDefaults.standard.integer(forKey: "nightNotification")].tituloVersiculo
        contentNight.subtitle = versiculos[UserDefaults.standard.integer(forKey: "nightNotification")].descricaoVersiculo
        //        contentMorning.title = versiculos[contentNumber].tituloVersiculo
        //        contentMorning.subtitle = versiculos[contentNumber].descricaoVersiculo
        contentNight.sound = .default
        //        guard let imageURL = Bundle.main.url(forResource: "solmanha", withExtension: "png") else { return }
        //        let attachment = try! UNNotificationAttachment(identifier: "solmanha", url: imageURL, options: .none)
        //        contentMorning.attachments = [attachment]
        contentNight.categoryIdentifier = "nightNotification"
        let nightCategory = UNNotificationCategory(identifier: "nightNotification", actions: [], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([nightCategory])
        var dateInfo = DateComponents()
        dateInfo.hour = 20
        dateInfo.minute = 30
        let nightTrigger = UNCalendarNotificationTrigger(dateMatching: dateInfo, repeats: true)
        //let morningTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: false)
        let requestNight = UNNotificationRequest(identifier: "nightNotification", content: contentNight, trigger: nightTrigger)
        UNUserNotificationCenter.current().add(requestNight)
    }
    //    func requestBackgroundTask() {
    //        let preferredDate = Date().addingTimeInterval(10)// One hour later
    //        WKExtension.shared().scheduleBackgroundRefresh(withPreferredDate: preferredDate, userInfo: nil) { (error) in
    //
    //            guard error == nil else {
    //                print("Couldn't schedule background refresh.")
    //                return
    //            }
    //
    //            print("Scheduled next background update task for: \(preferredDate)")
    //
    //        }
    //    }
    func getStarterDate() {
        UserDefaults.standard.set(Date().timeIntervalSince1970, forKey: "InitialDate")
//        print(UserDefaults.standard.integer(forKey: "InitialDate"))
//        let initialDate = Date(timeIntervalSince1970: Double(UserDefaults.standard.integer(forKey: "InitialDate")))
//        print(initialDate)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
