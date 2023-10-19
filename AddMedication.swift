//
//  AddMedication.swift
//  techVerse
//
//  Created by Milena Soares on 14/09/23.
//

import SwiftUI

struct AddMedication: View {
    @State private var textoDigitado = ""
    @State private var quantidadeDias = ""
    @State private var quantidadeRemedios = ""
    @State private var horarioRemedio = ""
    @State private var período = ""
    @State private var intervalo = ""
    let opcoes = ["Dias", "Semanas", "Meses"]
    let opcoes2 = ["Pilula(s)", "Injeção(ões)", "Supositório(s)", "Spray(s)"]
    let opcoes3 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"]
    let opcoes4 = ["Antes das refeições", "Durante as refeições", "Depois das refeições"]
    @State private var selecao = 0
    @State private var selecao2 = 0
    var body: some View {
//        TabView {
//            HomePage()
//                .tabItem {
//                    Label("Home", systemImage: "house")
//                }
//            Courses()
//                .tabItem {
//                    Label("Calendar", systemImage: "calendar")
//                }
//            InitialPage()
//                .badge("!")
//                .tabItem {
//                    Label("Add by photo", systemImage: "tray.and.arrow.up.fill")
//                }
//            AddMedication()
//                .tabItem {
//                    Label("Add medication", systemImage: "plus")
//                }
//        }
        ZStack{
            NavigationStack{
                ScrollView {
                    
                    HStack{
                        Text("Adicionar Medicação")
                            .fontWeight(.bold)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title)
                        
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
                  
                   Spacer()
                    Text("Nome do remédio: ")
                        .fontWeight(.regular)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.body)
                        .foregroundColor(Color("cinzaTexto"))
                                        HStack {
                                            Image(systemName: "pills.fill").foregroundColor(Color.gray)

                                            TextField("Digite seu nome", text: $textoDigitado)
                                            
                                    
                                            
                                            Spacer() 
                                        }
                                        .padding()
                                                .background(Color("cinza"))
                                                .cornerRadius(8.0)
                                                .padding()
                    VStack {
                        Text("Selecione o intervalo de dias: ")
                            .fontWeight(.regular)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .foregroundColor(Color("cinzaTexto"))
                        
                        HStack{
                   
                                Image(systemName: "calendar").foregroundColor(Color.gray)

                                TextField("Quantidade", text: $quantidadeDias)
                                
                        
                                
                                Spacer()
                            
                           
                            Picker("Selecione uma opção", selection: $selecao) {
                                ForEach(0..<opcoes.count, id: \.self) { indice in
                                    Text(opcoes[indice])
                                }
                            }
                            .accentColor(Color("cinzaTexto"))
                            .pickerStyle(MenuPickerStyle())
                            
                            //                                Text("Você selecionou: \(opcoes[selecao])")
                            //                                    .padding()
                        } .padding()
                            .background(Color("cinza"))
                            .cornerRadius(8.0)
                            .padding()
                            }
                    VStack {
                        Text("Selecione o quantidade de remédios: ")
                            .fontWeight(.regular)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .foregroundColor(Color("cinzaTexto"))
                        
                        HStack{
                   
                                Image(systemName: "tray.full").foregroundColor(Color.gray)

                                TextField("Quantidade", text: $quantidadeRemedios)
                                
                        
                                
                                Spacer()
                            
                           
                            Picker("Selecione uma opção", selection: $selecao2) {
                                ForEach(0..<opcoes2.count, id: \.self) { indice in
                                    Text(opcoes2[indice])
                                }
                            }
                            .accentColor(Color("cinzaTexto"))
                            .pickerStyle(MenuPickerStyle())
                            
                            //                                Text("Você selecionou: \(opcoes[selecao])")
                            //                                    .padding()
                        } .padding()
                            .background(Color("cinza"))
                            .cornerRadius(8.0)
                            .padding()
                            }
                    VStack {
                        Text("Selecione o horário para tomar: ")
                            .fontWeight(.regular)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .foregroundColor(Color("cinzaTexto"))
                        
                        HStack{
                   
                                Image(systemName: "clock").foregroundColor(Color.gray)

                                TextField("Horário", text: $horarioRemedio)
                                
                        
                                
                                Spacer()
                            
                            
                        
                            //                                Text("Você selecionou: \(opcoes[selecao])")
                            //                                    .padding()
                        } .padding()
                            .background(Color("cinza"))
                            .cornerRadius(8.0)
                            .padding()
                            }
                    VStack {
                        Text("Selecione o período para tomar: ")
                            .fontWeight(.regular)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .foregroundColor(Color("cinzaTexto"))
                        
                        HStack{
                   
                                Image(systemName: "clock").foregroundColor(Color.gray)

                            Picker("Selecione uma opção", selection: $selecao2) {
                                ForEach(0..<opcoes4.count, id: \.self) { indice in
                                    Text(opcoes4[indice])
                                }
                            }
                            .accentColor(Color("cinzaTexto"))
                            .pickerStyle(MenuPickerStyle())
                            //                                Text("Você selecionou: \(opcoes[selecao])")
                            //                                    .padding()
                            Spacer()
                           
                        } .padding()
                            .background(Color("cinza"))
                            .cornerRadius(8.0)
                            .padding()
                    }
                    .padding()
                    VStack {
                        Text("Informe o intervalo para tomar: ")
                            .fontWeight(.regular)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.body)
                            .foregroundColor(Color("cinzaTexto"))
                        
                        HStack{
                   
                                Image(systemName: "hourglass.bottomhalf.filled").foregroundColor(Color.gray)

                                TextField("De", text: $intervalo)
                                Spacer()
                            Picker("Selecione uma opção", selection: $selecao2) {
                                ForEach(0..<opcoes3.count, id: \.self) { indice in
                                    Text(opcoes3[indice])
                                }
                            }
                            .accentColor(Color("cinzaTexto"))
                            .pickerStyle(MenuPickerStyle())
                            
                            TextField("em ", text: $intervalo)
                            Picker("Selecione uma opção", selection: $selecao2) {
                                ForEach(0..<opcoes3.count, id: \.self) { indice in
                                    Text(opcoes3[indice])
                                }
                            }
                            .accentColor(Color("cinzaTexto"))
                            .pickerStyle(MenuPickerStyle())
                            
                            TextField("horas ", text: $intervalo)
                            //                                Text("Você selecionou: \(opcoes[selecao])")
                            //                                    .padding()
                        } .padding()
                            .background(Color("cinza"))
                            .cornerRadius(8.0)
                            .padding()
                            }
                }
            }
        }.navigationBarBackButtonHidden(true)

    }
}
struct AddMedication_Previews: PreviewProvider {
    static var previews: some View {
        AddMedication()
    }
}
