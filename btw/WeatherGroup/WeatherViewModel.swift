//
//  WeatherViewModel.swift
//  btw
//
//  Created by Hanbo Yu on 2020-02-26.
//  Copyright © 2020 Group25. All rights reserved.
//

import SwiftUI
import Combine

final class WeatherViewModel:ObservableObject{
    @Published var current:Weather?
    
    init(){
        self.fetch()
        
    }
}

extension WeatherViewModel{
    func fetch(_ city: String = "Kingston,CA"){
        API.fetchCurrentWeather(by: city){
            self.current=$0
        }
    }
}
