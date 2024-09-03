//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mike Valenti on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    
    var body: some View {
        VStack {
            WelcomeView().environmentObject(locationManager)
        }
        
        .background(Color(hue: 0.685, saturation: 1.0, brightness: 0.995))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
