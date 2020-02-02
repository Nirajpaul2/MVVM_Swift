
//
//  GlobalUrlString.swift
//  WeatherApp
//
//  Created by Niraj on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import Foundation
class ApiParser {
    
   static let singleton = ApiParser()
    
    func getWeatherData(url : String , completion: @escaping(NSDictionary) -> Void ) {
        let url = NSURLComponents(string: url)!
        var urlRequest = URLRequest(url: url.url!)
        
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "GET"
        let session = URLSession.shared
        
        let task = session.dataTask(with: urlRequest as URLRequest){ data,response,error in
            
            let httpResponse = response as? HTTPURLResponse
            if (httpResponse != nil) {
                print("statusCode: \(httpResponse?.statusCode ?? 200)")
            }
            if error != nil {
                return
            } else if (httpResponse != nil) && httpResponse?.statusCode == 401 {
             
            } else {
                let jsonResponse = try? (JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary)
                if (jsonResponse != nil) {
                    if let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode {
                        completion(jsonResponse!)
                    } else {
                    }
                } else {
                    return
                }
            }
            
        }
        task.resume()
    }
}
