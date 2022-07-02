//
//  ContentView.swift
//  BMI Calculator
//
//  Created by Abdullah Aiban on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    var body: some View {
        VStack{
            Spacer()
            Image("BMI")
                .resizable()
                .frame(width: 300, height: 300)
                .multilineTextAlignment(.center)
            Text("ادخل الطول والوزن")
                .font(.system(size: 40))
            Spacer()
            TextField("الطول", text: $height)
                .background()
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .padding()
            TextField("الوزن", text: $weight)
                .background()
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            Button(action: {
                result = calculateBMI(height: Double(height)!, weight: Double(weight)!)
            }, label: {
                Text("احسب")
                .font(.system(size: 50))
                .frame(width: 300, height: 110)
                .foregroundColor(Color.white)
                .background(Color.gray)
                .clipShape(Capsule())
            })
            Text(String(format: "BMI = %.2f",  (result)))
                .font(.system(size: 25))
            Text("الحالة = \(checkStatus(result: result))")
                .font(.system(size: 25))
        }.padding()
    }
    func calculateBMI(height: Double, weight: Double) -> Double{
        return weight/(height*height)
    }
    func checkStatus(result: Double) -> String {
        if result <= 20 {
            return "ضعيف"
        } else if result <= 25 {
            return "جيد"
        } else {
            return "سمين"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
