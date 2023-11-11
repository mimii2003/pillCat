//
//  DetailsCourse.swift
//  techVerse
//
//  Created by Student24 on 29/04/23.
//

import SwiftUI

struct PillInfo: View {
    var pill : Pill

    var body: some View {
        NavigationStack{
            
            ScrollView{
                ScrollView(showsIndicators: false){
                    VStack(){
                        Image("palestra")
                            .resizable()
                            .scaledToFit()
                        HStack{
                            Image("cursos")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 37.5, height: 37.5)
                                .clipShape(Circle())
                            Text(("Categoria \(pill.amountPerUse.pillType[1] ?? "")")).font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        .padding(.leading)
                        Text(pill.name).font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("azulEscuro"))
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 50.0) //nome do curso
                       
                        VStack{
                            HStack{
                                Text("Intervalo de dias").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text((" \(pill.periodOfTreatment.amount) \(pill.periodOfTreatment.timeMeasure[1] ?? "")")).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Link Bula").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                
                                Link(destination: URL(string: "https://www.irmandadeswift.com")!) {
                                    ZStack {
                                        Text("Clique Aqui!")
                                            .font(.body)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color.gray)
                                                .multilineTextAlignment(.center)
                                    }
                                }
                                
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Quantidade de remedios").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("Gratuito").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Horário inicial").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(pill.timeToIngest).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Intervalo de tempo ").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("Sim").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Período").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(pill.meal[1] ?? "antes refeicoes").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Intervalo").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("Sim").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            
                        }
                        .padding(.horizontal)
                        Spacer()
                        
                        VStack{
                            NavigationLink{
                                Courses()
                            } label: {
                                HStack{
                                    Image(systemName: "heart").font(.title)
                                    Text("Continuar")
                                        .fontWeight(.bold).font(.title3)
                                }.padding().foregroundColor(.white)
                                    .background(Color("azulEscuro"))
                                    .cornerRadius(40)
                                
                            }
                        }.padding(.trailing, 20)
                    }
                    
                }
            }
        }
    }

}

struct PillInfo_Previews: PreviewProvider {
    static var previews: some View {
        let placeholder = Pill(
            name: "Rivotril",
            periodOfTreatment: PeriodOfTreatment(amount: 20, timeMeasure: [1: "Dias"]),
            frequencyOfPill: FrequencyOfPill(intervalPeriod: 6, timeMeasure: [3: "Horas"]),
            amountPerUse: AmountPerUse(amount: "2", pillType: [1: "Pílula(s)"]),
            timeToIngest: "14:00",
            meal: [1: "Antes das Refeições"]
        )
        PillInfo(pill : placeholder)
    }
}
