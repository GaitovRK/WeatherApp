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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),  startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            
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
