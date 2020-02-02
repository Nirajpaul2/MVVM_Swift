//
//  WeathListingViewModel.swift
//  WeatherApp
//
//  Created by niraj paul on 01/02/20.
//  Copyright © 2020 administrator. All rights reserved.
//

import Foundation

protocol SuccessResult {
    func getSuccessResult()
}
class WeatherViewModel{
    var delegate: SuccessResult!
    var todayWeatherModules :[TodayWeatherViewModel] = [TodayWeatherViewModel]()
    
    func getWeatherData() {
        JsonResponse.singleton.getWeatherJsonObject { (weatherModule) in
            let todayWeatherViewModel = TodayWeatherViewModel(wearherData: weatherModule)
            self.todayWeatherModules.append(todayWeatherViewModel)
            self.delegate.getSuccessResult()
        }
    }
}
class TodayWeatherViewModel{
    var todayWeather: String!
    init(wearherData: Weather) {
        self.todayWeather = wearherData.todayWeatherReport
    }
}
