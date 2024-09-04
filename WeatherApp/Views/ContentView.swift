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
            
            if let location = locationManager.location{
                Text("The coordinates of your location are:\(location.longitude),\(location.latitude)")
            }
            else {
                if locationManager.isLoading {
                    LoadingView()
                }
                else {
                    WelcomeView().environmentObject(locationManager)
                }
            }
            
        }
        
        .background(Color(hue: 0.685, saturation: 1.0, brightness: 0.995))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
