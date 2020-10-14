
//
//  GlobalUrlString.swift
//  WeatherApp
//
//  Created by Niraj on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import Foundation

class JsonResponse{
   static let singleton = JsonResponse()

    //Weather
    func getWeatherJsonObject(completion: @escaping(Weather) -> Void){

        ApiParser.singleton.getWeatherData(url: GlobalUrlString.urlString) { (response) in
            
           let weatherObject = JsonResponseParse.parseWeatherResponse(dicRes: response)
            completion(weatherObject)
        }
    }
    
    //Registration
//    func registrationApiCall(){
//
//        ApiParser.singleton.getPost(url: GlobalUrlString.urlString, parameter: [:]) { (response) in
//
//        }
//
//    }
    
    //ForgetPassword
    
}
