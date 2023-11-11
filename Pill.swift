
import Foundation

struct Pill{
    var id = UUID()
    var name : String
    var periodOfTreatment : PeriodOfTreatment
    var frequencyOfPill : FrequencyOfPill
    var amountPerUse : AmountPerUse
    var timeToIngest: String
    var meal : [Int: String]
//    var photo : String
}
struct PeriodOfTreatment{
    var amount : Int
    var timeMeasure : [Int: String]
}
struct FrequencyOfPill{
    var intervalPeriod : Int
    var timeMeasure : [Int: String]
}
struct AmountPerUse{
    var amount : String
    var pillType : [Int: String]
}
