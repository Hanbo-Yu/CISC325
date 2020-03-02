//
//  ContentView.swift
//  btw
//
//  Created by Hanbo Yu on 2020-02-26.
//  Copyright © 2020 Group25. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var selected = 0
    @ObservedObject var weather = WeatherViewModel()
    var body: some View {
        NavigationView{
        VStack(alignment: .leading, spacing: 20.0){

                GeometryReader{ gr in
                    WeatherView(weather: self.weather.current, height: self.selected == 0 ? gr.size.height : gr.size.height * 0.50).animation(.easeInOut(duration:0.5))}

            ZStack{ NavigationLink(destination:SearchView()){Image("plus").renderingMode(.original).resizable().frame(width:60 ,height:60)            }.position(x:150, y:-100)
                }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors:[Color.red,Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
        }

}
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


