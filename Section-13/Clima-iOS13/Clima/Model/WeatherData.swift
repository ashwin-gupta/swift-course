//
//  WeatherData.swift
//  Clima
//
//  Created by Ashwin Gupta on 4/2/2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    // Decodable means that this struct can decode itself from an external representation (JSON)
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    // Property names must match what is in JSON
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    let description: String
}
