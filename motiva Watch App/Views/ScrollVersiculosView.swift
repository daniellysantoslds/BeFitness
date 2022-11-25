////
////  ListaVersiculos.swift
////  motiva Watch App
////
////  Created by Danielly Santos Lopes da Silva on 25/11/22.
////
//
//import SwiftUI
//
//struct ScrollVersiculosView: View {
//    
//    @ObservedObject var listaVersiculosModel: ScrollVersiculosModel = .init()
//    
//    @State var isItemViewPresenting: Bool = false
//    
//    var body: some View {
//        ZStack {
//            VStack(spacing: 20){
//                ScrollView(.vertical, showsIndicators: false) {
//                    VStack(alignment: .leading, spacing: 20) {
//                        ForEach(listaVersiculosModel.versiculos) { versiculo in
//                            
//                            NavigationLink(destination: getView(versiculo: versiculo)){
//                                VersiculoView(title: versiculo.title)
//                                
//                            }
//                            
//                            .navigationTitle("")
//                            .foregroundColor(.black)
//                            .multilineTextAlignment(.leading)
//                        } .padding(.vertical)
//                        
//                        //            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0,65, alignment: .center)
//                    }
//                    
//                    
//                    
//                    
//                }
//            }
//            
//        }
//        
//        struct ScVersiculoView: View {
//            
//            var title: String
//            
//            var body: some View {
//                ZStack {
//                    VStack() {
//                        Text(title).foregroundColor(Color.white)
//                            .bold()
//                            .multilineTextAlignment(.leading)
//                    }//.frame(width:30, height: 10)
//                    
//                }
//                
//            }
//            
//        }
//        
//        @ViewBuilder func getView(versiculo: Versiculo) -> some View {
//            switch versiculo.id {
//            case 0: MenuPrincipalView()
//            case 1: OnboardingView()
//            default: EmptyView()
//            }
//        }
//        
//        
//        
//        struct ScrollVersiculosView_Previews: PreviewProvider {
//            static var previews: some View {
//                ScrollVersiculosView()
//            }
//        }
//    }
//    
//    
//}
