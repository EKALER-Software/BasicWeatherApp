//
//  FahrenheitToCelsius.swift
//  Project_SoBu
//
//  Created by Ekrem Alp CIFTCI on 4/28/22.
//

import Foundation
struct ContentView: View {
    @State var buttonTitle: String = "Button Not Clicked"
    var body: some View {
        VStack {
           Text(buttonTitle)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .padding()
                .frame(height: 0.0)

            Button(action: {
                buttonTitle = "Button Clicked!"
            }) {
                Text("Click Here")
            }
        }
        

    }
    
    
}
