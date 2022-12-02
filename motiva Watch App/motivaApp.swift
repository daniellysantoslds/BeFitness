//
//  motivaApp.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 23/11/22.
//

import SwiftUI

@main
struct motiva_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
//            if UserDefaults.standard.bool(forKey: "OnboardingViewed") {
//                MenuPrincipalView()
//            } else {
//                OnboardingView()
//            }
//            DetalhesVersiculoView()
            HumorView()
        }
    }
}
