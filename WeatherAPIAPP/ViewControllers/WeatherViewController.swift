//
//  ViewController.swift
//  WeatherAPIAPP
//
//  Created by Иван Дрожжин on 08.08.2022.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBAction func actionButton() {
        fetchForecast()
    }
    private func fetchForecast() {
        guard
            let url = URL(string: "https://goweather.herokuapp.com/weather/Moscow")
        else { return }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let forecast = try JSONDecoder().decode(CurrentWeather.self, from: data)
                print(forecast)
            } catch let error {
                print(error.localizedDescription    )
            }
        }.resume()
    }
}

