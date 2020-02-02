//
//  ViewController.swift
//  WeatherApp
//
//  Created by administrator on 19/11/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import UIKit

//MARK: TableView Cell
class ListingTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
}


class ViewController: UIViewController , SuccessResult{
   
    @IBOutlet weak var Lbl1: UILabel!
    
    private var usersListViewModel = WeatherViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.usersListViewModel.getWeatherData()
        self.usersListViewModel.delegate = self
      
    }
    
    func getSuccessResult() {
        print("success")
      let todayWeatherViewModel = self.usersListViewModel.todayWeatherModules[0]
      let title = todayWeatherViewModel.todayWeather
        DispatchQueue.main.async {
               self.Lbl1.text = title
        }
     
      
    }
    
}

