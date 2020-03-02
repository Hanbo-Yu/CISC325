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
        VStack(alignment: .leading, spacing: 5.0){
            Text("\(weather?.main.temp.round ?? 0)°F")
            .foregroundColor(.white)
            .fontWeight(Font.Weight.heavy)
            .font(.system(size:40))
            HStack{
                Text("\(weather?.name ?? "Unknown")")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()

        }
    Text("\(weather?.weather.last?.description ?? "Unknown")")
                .foregroundColor(.white)
                .font(.body)
        }
        .position(x:100, y:120)
    }
}
struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }

}

extension Double{
    var round: Int{
        return Int(self)
    }
}
