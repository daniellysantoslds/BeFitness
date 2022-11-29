//
//  HumorView.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 28/11/22.
//

import SwiftUI

struct HumorView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                VStack {
                    Text("Como esta se sentindo?")
                    
                }
                
                HStack(spacing: 20) {
                    
                    
                    NavigationLink (destination: MenuPrincipalView()) {
                        Image(systemName: "heart")
//                    }.frame(width: 50, height: 50)
//                        .cornerRadius(16)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }.frame(width: 50, height: 50)
                        .cornerRadius(16)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }.frame(width: 50, height: 50)
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
