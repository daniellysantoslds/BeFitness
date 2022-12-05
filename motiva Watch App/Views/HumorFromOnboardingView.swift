//
//  HumorFromOnboardingView.swift
//  motiva Watch App
//
//  Created by Jpsmor on 05/12/22.
//

import SwiftUI

struct HumorFromOnboardingView: View {
    
    var body: some View {
        
            VStack(spacing: 20){
                    Text("Como esta se sentindo?")

                HStack(spacing: 12) {
                    
                    
                    NavigationLink (destination: MenuPrincipalView().navigationBarBackButtonHidden(true)) {
                        Image("imagemfeliz")
                    }.frame(width: 55, height: 55)
                        .simultaneousGesture(TapGesture().onEnded({
                            UserDefaults.standard.set(1, forKey: "\(Date().formatted(.dateTime.day().month().year()))")
                            generateDaysData()
                        }))
                    
                    
                    NavigationLink (destination: MenuPrincipalView().navigationBarBackButtonHidden(true)) {
                        Image("imagemnormal")
                    }.frame(width: 55, height: 55)
                        .simultaneousGesture(TapGesture().onEnded({
                            UserDefaults.standard.set(0, forKey: "\(Date().formatted(.dateTime.day().month().year()))")
                            generateDaysData()
                        }))
                    
                    NavigationLink (destination: MenuPrincipalView().navigationBarBackButtonHidden(true)) {
                        Image("imagemtriste")
                    }.frame(width: 55, height: 55)
                        .simultaneousGesture(TapGesture().onEnded({
                            UserDefaults.standard.set(2, forKey: "\(Date().formatted(.dateTime.day().month().year()))")
                            generateDaysData()
                        }))
                        //.cornerRadius(16)
                    
                    
                }
            }
            
            
            
        
    }
    
    func generateDaysData() {
        let initialDate = Date(timeIntervalSince1970: Double(UserDefaults.standard.integer(forKey: "InitialDate")))
        var generatingFromData = Date() + 1
        
        while generatingFromData.timeIntervalSince1970 - initialDate.timeIntervalSince1970 > 0 {
            let dateMood = DateMood()
            dateMood.value = UserDefaults.standard.integer(forKey: "\(generatingFromData.formatted(.dateTime.day().month().year()))")
            daysHumors.append(.init(mood: dateMood, date: generatingFromData.formatted(.dateTime.day().month().year())))
            generatingFromData -= 86400
        }
    }
}

struct HumorFromOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        HumorFromOnboardingView()
    }
}
