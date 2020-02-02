
//
//  GlobalUrlString.swift
//  WeatherApp
//
//  Created by Niraj on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import Foundation
class JsonResponseParse {
    static func parseWeatherResponse(dicRes:NSDictionary) -> Weather  {
        let weatherObj = Weather()
        let houreDic = dicRes["hourly"] as? NSDictionary
        let summary = houreDic?["summary"] as? String
        weatherObj.todayWeatherReport = summary
           return weatherObj
    }
}
