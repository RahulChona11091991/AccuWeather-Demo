//
//  WFSearchLocationViewController+TableView.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 11/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import Foundation
import UIKit

extension WFSearchLocationViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if autoCompleteBaseInstancesArray?.count ?? 0 == 0 {
            self.tableView.isHidden = true
        } else {
            self.tableView.isHidden = false
        }
        return autoCompleteBaseInstancesArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WFSearchLocationTableViewCell", for: indexPath) as! WFSearchLocationTableViewCell
        cell.configCell(autoCompleteBaseInstance: (autoCompleteBaseInstancesArray?[indexPath.row])!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if autoCompleteBaseInstancesArray?[indexPath.row].key != nil {
            self.getForecastDetailData(selectedLocationKey: autoCompleteBaseInstancesArray?[indexPath.row].key ?? "")
        }        
    }
    
}
