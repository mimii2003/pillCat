//
//  HomeTi.swift
//  techVerse
//
//  Created by Milena Soares on 08/09/23.
//

import SwiftUI

struct HomeTi: View {
    var body: some View {
       
        ZStack{
            NavigationStack{
                ScrollView {
                    HStack{
                        VStack{
                            Text("Seja bem vindo!")
                                .font(.title3)
                                .padding([.leading, .top])
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            
//                            Text("Pedro Olyntho")
//                                .padding(.leading)
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .font(.title2)
//                                .fontWeight(.medium)
//                                .foregroundColor(Color("azulEscuro"))
                            
                        }
                        Spacer()
                    }
                    .padding([.top, .bottom])
                    HStack{
                        Text("Categorias")
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                        
                    }
                    .padding([.trailing, .top])
                    HStack{
                        Spacer()
                        VStack{
                            ZStack {
                                            Color("cinza")
                                            .frame(width: 67, height: 67)
                                            .cornerRadius(67 / 2)
                                            .overlay(
                                                Image("heart rate") //
                                                    .resizable()
                                                    .frame(width: 24, height: 24)
                                            )
                                    }
                        }
                        Spacer()
                        ZStack {
                                        Color("cinza")
                                        .frame(width: 67, height: 67)
                                        .cornerRadius(67 / 2)
                                        .overlay(
                                            Image("pilula")
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                        )
                                }
                        Spacer()
                        VStack{
                            ZStack {
                                            Color("cinza")
                                            .frame(width: 67, height: 67)
                                            .cornerRadius(67 / 2)
                                            .overlay(
                                                Image("dente") //
                                                    .resizable()
                                                    .frame(width: 24, height: 24)
                                            )
                                    }
                            
                        }
                        Spacer()
                        ZStack {
                                        Color("cinza")
                                        .frame(width: 67, height: 67)
                                        .cornerRadius(67 / 2)
                                        .overlay(
                                            Image("ampola") //
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                        )
                                }
                        Spacer()
                    }.padding(.bottom)
                    HStack{
                        Text("8:00")
                            .fontWeight(.bold)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                        
                    }
                    HStack{
                        Image("pilulaA")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(5)
                            .padding([.leading, .bottom, .top]).frame(width: 125 , height:125)
                        
                        VStack{
                            Text("Omega 3")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(2.0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Text("2 Após refeições")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                Text("Durante 7 dias")
                                   
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                    .padding(.trailing)
                            }
                            
                        }
                        .padding()
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.gray, lineWidth: 0.3))
                    .padding([.trailing, .leading, .bottom])
                    HStack{
                        Image("comprimido")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(5)
                            .padding([.leading, .bottom, .top]).frame(width: 125 , height:125)
                        
                        VStack{
                            Text("Comlivit")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.bottom, 2.0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack{
                                Text("1 Após refeições")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                Text("Durante 7 dias")
                                   
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                    .padding(.trailing)
                            }
                            
                        }
                        .padding()
                        
                    }
                    .overlay(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.gray, lineWidth: 0.3))
                    .padding([.trailing, .leading, .bottom])
                    HStack{
                        Text("14:00")
                            .fontWeight(.bold)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                        
                    }
                    VStack{
                        HStack{
                            Image("ampolinha")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(5)
                                .padding([.leading, .bottom, .top]).frame(width: 125 , height:125)
                            
                            VStack{
                                Text("Dipirona")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 2.0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                HStack{
                                    Text("1 seringa")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .foregroundColor(.gray)
                                        .font(.footnote)
                                    Text("Durante 4 dias")
                                    
                                        .foregroundColor(.gray)
                                        .font(.footnote)
                                        .padding(.trailing)
                                }
                                
                            }
                            .padding()
                            
                        }
                        HStack(alignment: .bottom){
                            Image("Alert")
                                .cornerRadius(5)
                                .padding([.leading, .bottom, .top])
                            Text("Você tem apenas 5 cápsulas")
                                .foregroundColor(.black)
                                .font(.body)
                                .padding(.bottom)
                        }
                        .padding()
                        .frame(width: 320, height: 41.0)
                        
                        .background(Color("cinza"))
                            .cornerRadius(12)
                    }
                    
                    .overlay(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.gray, lineWidth: 0.3))
                    .padding([.trailing, .leading, .bottom])
                

                }
            }
        }.navigationBarBackButtonHidden(true)

    }
}

struct HomeTi_Previews: PreviewProvider {
    static var previews: some View {
        HomeTi()
    }
}
