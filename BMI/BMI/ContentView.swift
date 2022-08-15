//
//  ContentView.swift
//  BMI
//
//  Created by Sumaya Buzlouf on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        VStack{
            Image("body scale")
                .resizable()
                .scaledToFit()
                .padding()
           
            Text("Enter Height & Weight")
                .font(.system(size: 28))
            
            TextField("Enter height", text: $height)
                .padding()
            
            TextField("Enter weight", text: $weight)
                .padding()
            
            Button {
                result = BMIcalc(w: Double(weight) ?? 0.0, h: Double(height) ?? 0.0)
                
                if result <= 20{
                    health = "skinny"
                } else if result <= 25{
                    health = "normal"
                } else {
                    health = "obese"
                }
            } label: {
                Text("Calculate")
                    .padding()
                    .background(.indigo)
                    .cornerRadius(15)
                    .foregroundColor(.white)
            }
            
            Text("BMI = \(result)")
                .padding()
                .font(.system(size: 25))
            
            Text("You are = \(health)")
                .font(.system(size: 25))

        }
    }
    func BMIcalc(w: Double, h: Double) -> Double {
        return w / (h * h)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
