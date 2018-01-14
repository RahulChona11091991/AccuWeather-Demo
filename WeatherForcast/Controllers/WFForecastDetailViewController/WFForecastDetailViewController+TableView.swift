//
//  WFForecastDetailViewController+TableView.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 12/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import Foundation
import UIKit

extension WFForecastDetailViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return forecastDataBaseInstanceArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard forecastDataBaseInstanceArray?[section].epochDateTime != nil else {
            return "Date not available"
        }
        return getDateStringFromEpochDate(epochDate: forecastDataBaseInstanceArray?[section].epochDateTime)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WFForecastDetailTableViewCell", for: indexPath) as! WFForecastDetailTableViewCell
        cell.configCell(forecastDataBaseInstance: (forecastDataBaseInstanceArray?[indexPath.section])!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

