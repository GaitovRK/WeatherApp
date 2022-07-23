//
//  ContentView.swift
//  WeatherApp
//
//  Created by Rashid Gaitov on 22.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            backgroundGradientView(topColor: .blue, bottomColor: Color("lightblue"))
            VStack {
                cityTextView(cityName: "Istanbul, TR")
                todaysTemperatureView(imageName: "cloud.sun.fill", temp: "34")
                
                Spacer()
                
                HStack(spacing: 25) {
                    WeatherDayView(dayOfWeek: "MON", imageName: "sun.max.fill", temp: "32°")
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temp: "31°")
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.drizzle.fill", temp: "28°")
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.rain.fill", temp: "29°")
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.rain.fill", temp: "33°")
                }
                
                Spacer()
                
                Button {
                    print("Tap")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50, alignment: .center)
                        .font(.title2)
                        .background(Color.white)
                        .cornerRadius(10.0)
    //                    .foregroundColor(.white)
                }
                
                Spacer()
            }
        }

            
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String, imageName: String, temp: String
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(temp)
                .font(.system(size: 28, weight: .regular))
                .foregroundColor(.white)
        }
    }
}


struct cityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .regular, design: .default))
            .foregroundColor(.white)
            .padding(10)
    }
}

struct todaysTemperatureView: View {
    var imageName: String
    var temp: String
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 110, alignment: .top)
            Text(temp + "°")
                .font(.system(size: 50, weight: .regular))
                .foregroundColor(.white)
        }
    }
}

struct backgroundGradientView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),  startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
    }
}
