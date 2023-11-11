//
//  HomeTi.swift
//  techVerse
//
//  Created by Milena Soares on 08/09/23.
//

import SwiftUI
let pillList = [
    Pill(
        name: "Rivotril",
        periodOfTreatment: PeriodOfTreatment(amount: 20, timeMeasure: [1: "Dias"]),
        frequencyOfPill: FrequencyOfPill(intervalPeriod: 6, timeMeasure: [3: "Horas"]),
        amountPerUse: AmountPerUse(amount: "2", pillType: [1: "Pílula(s)"]),
        timeToIngest: "14:00",
        meal: [1: "Antes das Refeições"]
    ),
    Pill(
        name: "Medicine A",
        periodOfTreatment: PeriodOfTreatment(amount: 4, timeMeasure: [1: "Semanas"]),
        frequencyOfPill: FrequencyOfPill(intervalPeriod: 3, timeMeasure: [1: "Day"]),
        amountPerUse: AmountPerUse(amount: "1.5", pillType: [1: "ampola(s)"]),
        timeToIngest: "16:00",
        meal: [1: "Before breakfast", 2: "Before dinner"]
        // photo: "URL_DA_IMAGEM_AQUI"
    ),
    Pill(
        name: "Vitamin B",
        periodOfTreatment: PeriodOfTreatment(amount: 12, timeMeasure: [1: "Meses"]),
        frequencyOfPill: FrequencyOfPill(intervalPeriod: 1, timeMeasure: [1: "Day"]),
        amountPerUse: AmountPerUse(amount: "1", pillType: [1: "Pílula(s)"]),
        timeToIngest: "16:30",
        meal: [1: "After lunch"]
        // photo: "URL_DA_IMAGEM_AQUI"
    ),
    Pill(
        name: "Prescription X",
        periodOfTreatment: PeriodOfTreatment(amount: 8, timeMeasure: [1: "Week"]),
        frequencyOfPill: FrequencyOfPill(intervalPeriod: 2, timeMeasure: [1: "Day"]),
        amountPerUse: AmountPerUse(amount: "0.5", pillType: [1: "comprimido(s)"]),
        timeToIngest: "18:00",
        meal: [1: "Before sleep"]
        // photo: "URL_DA_IMAGEM_AQUI"
    ),
    Pill(
        name: "Supplement Y",
        periodOfTreatment: PeriodOfTreatment(amount: 3, timeMeasure: [1: "Month"]),
        frequencyOfPill: FrequencyOfPill(intervalPeriod: 1, timeMeasure: [1: "Day"]),
        amountPerUse: AmountPerUse(amount: "2", pillType: [1: "comprimido(s)"]),
        timeToIngest: "20:00",
        meal: [1: "Anytime"]
        // photo: "URL_DA_IMAGEM_AQUI"
    ),
] 
struct HomeTi: View {
    var body: some View {
       //teste
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
                                            Image("ampolinha") //
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                        )
                                }
                        Spacer()
                    }.padding(.bottom)
                    ForEach(pillList, id: \.id){
                        pill in
                        NavigationLink(destination: PillInfo(pill: pill)){
                            VStack{

                                HStack{
                                    Text(pill.timeToIngest)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                        .padding(.leading)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.headline)
                                    
                                }
                                VStack{
                                    HStack{
                                        Image(pill.amountPerUse.pillType[1] ?? "Pílula(s)")
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(5)
                                            .padding([.leading, .bottom, .top]).frame(width: 125 , height:125)
                                        
                                        VStack{
                                            Text(pill.name)
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .padding(.bottom, 2.0)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            HStack{
                                                Text("\(pill.amountPerUse.amount) \(pill.amountPerUse.pillType[1] ?? "")")

                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                    .foregroundColor(.gray)
                                                    .font(.footnote)
                                                Text("Durante: \(pill.periodOfTreatment.amount) \(pill.periodOfTreatment.timeMeasure[1] ?? "")")
                                                
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
                    }
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
