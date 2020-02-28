//
//  WeatherView.swift
//  btw
//
//  Created by Hanbo Yu on 2020-02-26.
//  Copyright © 2020 Group25. All rights reserved.
//
//
import SwiftUI

struct WeatherView: View {
    var weather: Weather?
    var height: CGFloat = 0
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("\(weather?.name ?? "Unknown")")
                .font(.title)
                .foregroundColor(.white)
                .bold()
            HStack{
                Text("\(weather?.main.temp.round ?? 0)")
                    .foregroundColor(.white)
                    .fontWeight(Font.Weight.heavy)
                    .font(.system(size:65))
        }
    Text("\(weather?.weather.last?.description ?? "Unknown")")
                .foregroundColor(.white)
                .font(.body)
        }.frame(width:height,height:height)


    }
}
func convertToCelsius(fahrenheit: Int) -> Int {
    return Int(5.0 / 9.0 * (Double(fahrenheit) - 32.0))
}
