//
//  ContentView.swift
//  weather-app-swiftUI
//
//  Created by 박현렬 on 2023/06/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack{
            WelcomeView().environmentObject(locationManager)
            
        }.background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
            .preferredColorScheme(.dark)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
