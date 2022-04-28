//
//  ContentView.swift
//  Project_WeatherIOS
//
//  Created by Ekrem Alp CIFTCI on 4/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:
            Gradient (colors: [.blue,.white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("West Nyack, NY")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack (spacing:20){
                    Image(systemName: "wind")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("55°")//° This is option+shift+8
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                Spacer()
                HStack (spacing:20){
                    WeatherDayView(mounth:4,day:28,dayofweek: "Today",
                                   imagename: "wind",
                                   temprature: 55)
                    WeatherDayView(mounth:4,day:29,dayofweek: "FRI",
                                   imagename: "sun.max.fill",
                                   temprature: 61)
                    WeatherDayView(mounth:4,day:30,dayofweek: "SAT",
                                   imagename: "sun.max.fill",
                                   temprature: 64)
                    WeatherDayView(mounth:5,day:1,dayofweek: "SUN",
                                   imagename: "sun.max.fill",
                                   temprature: 68)
                    WeatherDayView(mounth:5,day:2,dayofweek: "MON",
                                   imagename: "cloud.rain.fill",
                                   temprature: 56)
                    
                    
                }
                Spacer()
                Button{
                    print("Tapped")
                }
                label: {
                   Text("Change day to hour view")
                        .frame(width: 300, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(15)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var mounth:Int
    var day:Int
    var dayofweek :String
    var imagename :String
    var temprature :Int
    

    
    var body: some View {
        VStack{
            Text("\(mounth)/\(day)")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Text(dayofweek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temprature)°")//° This is option+shift+8
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
