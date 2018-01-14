
//
//  WFForecastDetailViewController.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 11/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import UIKit

class WFForecastDetailViewController: UIViewController {
    
    //MARK: - VARIABLES -
    var selectedLocationKey : String?
    var forecastDataBaseInstanceArray : [ForecastDataBaseClass]?

    //MARK: - IBOUTLETS -
    @IBOutlet weak var tableView: UITableView!

    //MARK: - VIEWCONTROLLER LIFECYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    fileprivate func setupView() {
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: - ACTIONS -
extension WFForecastDetailViewController {
    @IBAction func hide(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

//MARK: - HELPER METHODS -
extension WFForecastDetailViewController {
    func getDateStringFromEpochDate(epochDate: Double?) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy HH:mm:ss"
        guard epochDate != nil else {
            return "Date not available"
        }
        return dateFormatter.string(from: Date(timeIntervalSince1970: epochDate!))
    }
}
