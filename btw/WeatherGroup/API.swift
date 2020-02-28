//
//  API.swift
//  btw
//
//  Created by Hanbo Yu on 2020-02-26.
//  Copyright © 2020 Group25. All rights reserved.
//

//Acquired APIKey from openweathermap.org
private let baseUrlForCurrentWeather = URL(string:
"https://api.openweathermap.org/data/2.5/weather")!
private let appid = "6333f8f8e24d33061a6ea5cf6b7f5c1d"

private var decoder: JSONDecoder{
    let decode = JSONDecoder()
    decode.keyDecodingStrategy = .convertFromSnakeCase
    return decode
}
import SwiftUI

class API{
    class func fetchCurrentWeather (by city: String, onSuccess: @escaping (Weather) -> Void){
        let query = ["q": "\(city)", "appid": appid, "units": "Imperial"]
        
        guard let url = baseUrlForCurrentWeather.withQueries(query) else{
            fatalError()
        }
        URLSession.shared.dataTask(with:url) { (data, res, err) in
            guard let data = data, err == nil else{
                fatalError(err!.localizedDescription)
            }
            do{
                let weather = try decoder.decode(Weather.self, from: data)
                DispatchQueue.main.async{
                    onSuccess(weather)
                }
            }
            catch{
                fatalError(error.localizedDescription)
            }
        }.resume()
    }
}

extension URL{
    func withQueries(_ queries: [String: String])-> URL? {
        guard var component = URLComponents(url: self, resolvingAgainstBaseURL:
            true)else {
                fatalError()
        }
        component.queryItems = queries.map { URLQueryItem(name: $0.key, value : $0.value)}
        return component.url
    }
}
