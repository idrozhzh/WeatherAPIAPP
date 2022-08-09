//
//  File.swift
//  WeatherAPIAPP
//
//  Created by Иван Дрожжин on 08.08.2022.
//

struct CurrentWeather: Decodable {
    let temperature: String
    let wind: String
    let description: String
    let forecast: [Forecast]
}

struct Forecast: Decodable {
    let day: String
    let temperature: String
    let wind: String
}
