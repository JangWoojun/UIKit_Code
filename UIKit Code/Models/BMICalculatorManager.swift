import Foundation
import UIKit

struct BMICalculatorManager {
    
    private var bmi: BMI?
    
    mutating func returnBMI(weight: Double, height: Double) -> BMI {
        calculateBMI(weight: weight, height: height)
        return bmi ?? BMI(bmi: 0.0, bmiText: "오류", color: UIColor.white)
    }
    
    mutating private func calculateBMI(weight: Double, height: Double){
        
        let bmiNumber: Double
        let bmiText: String
        let color: UIColor
        
        bmiNumber = weight / ((height * 0.01) * (height * 0.01))
        
        if bmiNumber < 18.5 {
            bmiText = "저체중으로 체중 증량이 필요합니다"
            color = UIColor.cyan
        } else if bmiNumber < 23 {
            bmiText = "정상 체중입니다"
            color = UIColor.systemGreen
        } else if bmiNumber < 25 {
            bmiText = "과체중으로 약간에 체중 감량이 필요합니다"
            color = UIColor.systemOrange
        } else {
            bmiText = "비만으로 체중 감량이 필요합니다"
            color = UIColor.systemRed
        }
        
        bmi = BMI(bmi: bmiNumber, bmiText: bmiText, color: color)
    }
    
}
