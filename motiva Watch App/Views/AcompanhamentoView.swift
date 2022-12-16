//
//  AcompanhamentoView.swift
//  motiva Watch App
//
//  Created by Jpsmor on 04/12/22.
//

import SwiftUI

struct AcompanhamentoView: View {
    
    @State var refresh : Bool = false
    
    var body: some View {
        ScrollView {
            ForEach(0..<daysHumors.count) { index in
                
                    HStack {
                        Spacer(minLength: 5)
                        Text(daysHumors[index].date)
                        Spacer()
                        if daysHumors[index].mood.value == 0 {
                            Image("imagemnormal")
                                .onTapGesture(perform: {
                                    daysHumors[index].mood.value = 1
                                    UserDefaults.standard.set(1, forKey: "\(daysHumors[index].date)")
                                    refresh.toggle()
                                })
                        } else if daysHumors[index].mood.value == 1 {
                            Image("imagemfeliz")
                                .onTapGesture(perform: {
                                    daysHumors[index].mood.value = 2
                                    UserDefaults.standard.set(2, forKey: "\(daysHumors[index].date)")
                                    refresh.toggle()
                                })
                        } else if daysHumors[index].mood.value == 2 {
                            Image("imagemtriste")
                                .onTapGesture(perform: {
                                    daysHumors[index].mood.value = 0
                                    UserDefaults.standard.set(0, forKey: "\(daysHumors[index].date)")
                                    refresh.toggle()
                                })
                        }
                    }
                    .background(Color.clear.disabled(refresh))
                        .background(Color("teste"))
                    .cornerRadius(8)
                
               
            }
            //        }.onAppear(perform: {
            //            generateImageArray()
            //        })
        }
        
        //
        //    func generateImageArray() {
        //        var index = 0
        //        while index < daysHumors.count {
        //            if daysHumors[index].mood.value == 0 {
        //                imageArray.append("imagemnormal")
        //            } else if daysHumors[index].mood.value == 1 {
        //                imageArray.append("imagemfeliz")
        //            } else if daysHumors[index].mood.value == 2 {
        //                imageArray.append("imagemtriste")
        //            }
        //            index = index + 1
        //        }
        //    }
    }
}

struct AcompanhamentoView_Previews: PreviewProvider {
    static var previews: some View {
        AcompanhamentoView()
    }
}
