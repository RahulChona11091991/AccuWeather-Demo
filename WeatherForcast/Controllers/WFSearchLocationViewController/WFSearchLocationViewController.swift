//
//  WFSearchLocationViewController.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 11/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import UIKit
import MBProgressHUD

class WFSearchLocationViewController: UIViewController {
    
    //MARK: - VARIABLES -
    var autoCompleteBaseInstancesArray : [AutoCompleteBaseClass]?
    
    //MARK: - IBOUTLETS -
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    //MARK: - VIEWCONTROLLER LIFECYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//MARK: - SEARCHBAR DELEGATES -
extension WFSearchLocationViewController : UISearchBarDelegate {
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
        self.autoCompleteBaseInstancesArray = nil
        self.searchBar.text = ""
        self.tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // Call API
        self.getData()
    }
}

//MARK: - SCROLLVIEW DELEGATES -
extension WFSearchLocationViewController {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
}

//MARK: - NETWORK CALLS -
extension WFSearchLocationViewController {
    
    fileprivate func validateSearchBarText() ->  Bool {
        if self.searchBar.text != nil && self.searchBar.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) != "" {
            return true
        }
        return false
    }
    
    @objc fileprivate func getData() {
        
        guard validateSearchBarText() else {
            print("Warning: Enter search text....")
            return
        }
        
        var parameters : [String:AnyObject] = [:]
        parameters["q"] = self.searchBar.text as AnyObject
        
        AutoCompleteBaseClass.getAutoCompleteResults(requestParams: parameters, completion: { (success, error, autoCompleteBaseInstancesArray) -> (Void) in
            
            if success == true {
                
                self.autoCompleteBaseInstancesArray = autoCompleteBaseInstancesArray
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            } else {
                print("Something went wrong!")
            }
        })
    }
    
    @objc func getForecastDetailData(selectedLocationKey: String) {
        // Show Loader
        MBProgressHUD.showAdded(to: self.view, animated: true)
        
        let parameters : [String:AnyObject] = ["LocationKey":selectedLocationKey as AnyObject]
        ForecastDataBaseClass.getForecastDetails(requestParams: parameters, completion: { (success, error, forecastDataBaseInstanceArray) -> (Void) in
            
            DispatchQueue.main.async {
                MBProgressHUD.hide(for: self.view, animated: true) // Hide Loader
            }
            
            if success == true {
                
                guard forecastDataBaseInstanceArray != nil else {
                    return
                }
                
                DispatchQueue.main.async {
                    let instance = UIStoryboard.getForecastDetailViewController(forecastDataBaseInstanceArray: forecastDataBaseInstanceArray!)
                    self.present(instance!, animated: true, completion: nil)
                }
                
            } else {
                print("Something went wrong!")
            }
        })
    }
}
