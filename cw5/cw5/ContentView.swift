//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            ExtractedView(myCounter: $counter[0], athkar: "استغفر الله")
            ExtractedView(myCounter: $counter[1], athkar: "الحمدلله")
            ExtractedView(myCounter: $counter[2], athkar: "سبحان الله وبحمده")
           
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var myCounter: Int
    @State var athkar: String
    var body: some View {
        HStack{
            Spacer()
            Text("\(athkar)")
                .font(Font.custom("Mishafi Regular", size: 60))
            Spacer()
            Text("\(myCounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.indigo)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    myCounter = myCounter + 1
                }
        }.padding()
    }
}
