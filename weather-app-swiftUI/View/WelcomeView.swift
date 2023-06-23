//
//  WelcomeView.swift
//  weather-app-swiftUI
//
//  Created by 박현렬 on 2023/06/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager : LocationManager
    var body: some View {
        VStack(){
            VStack(spacing : 20){
                Text("Welcome \n to the\n WeatherApp").bold().font(.title)
                
                Text("Please share your location").font(.headline).padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
