//
//  ListaVersiculos.swift
//  motiva Watch App
//
//  Created by Danielly Santos Lopes da Silva on 25/11/22.
//

import SwiftUI

struct ListaVersiculosView: View {
    
    @ObservedObject var listaVersiculosModel: ListaVersiculosModel = .init()
    
    @State var isItemViewPresenting: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20) {
                        ForEach(listaVersiculosModel.versiculos) { versiculo in
                            
                            NavigationLink(destination: ContentView()){
                                VersiculoView(title: versiculo.title)
                                
                            }
                            
                        }
                        .navigationTitle("")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                    } .padding(.vertical)
                    
                    //            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0,65, alignment: .center)
                }
                
                
                
                
            }
        }
        
    }
    
    struct VersiculoView: View {
        
        var title: String
        
        var body: some View {
            ZStack {
                VStack() {
                    Text(title).foregroundColor(Color.white)
                        .bold()
                        .multilineTextAlignment(.leading)
                                        }//.frame(width:30, height: 10)
                    
                }
                
            }
            
        }
        
        struct ListaVersiculos_Previews: PreviewProvider {
            static var previews: some View {
                ListaVersiculosView()
            }
        }
    }
    
