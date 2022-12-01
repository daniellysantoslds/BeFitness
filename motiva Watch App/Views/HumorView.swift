//
//  HumorView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 28/11/22.
//

import SwiftUI

struct HumorView: View {
    
    
    
    //var iconeUm: Int
    
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                VStack {
                    Text("Como esta se sentindo?")
                    
                }
                
                HStack(spacing: 12) {
                    
                    
                    NavigationLink (destination: MenuPrincipalView()) {
                        Image("imagemfeliz")
                    }.frame(width: 55, height: 55)
                        .simultaneousGesture(TapGesture().onEnded({print("deu bom")}))
                    
                    
                    NavigationLink (destination: MenuPrincipalView()) {
                        Image("imagemnormal")
                    }.frame(width: 55, height: 55)
                    
                    NavigationLink (destination: MenuPrincipalView()) {
                        Image("imagemtriste")
                    }.frame(width: 55, height: 55)
                        .cornerRadius(16)
                    
                    
                }
            }
            
            
            
        }
        
    }
}




struct HumorView_Previews: PreviewProvider {
    static var previews: some View {
        HumorView()
    }
}

