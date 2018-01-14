//
//  ForecastDataBaseClass+Services.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 11/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

extension ForecastDataBaseClass {
    
    // MARK:- GET FORECAST DETAILS RESULTS
    class func getForecastDetails(requestParams: [String: Any], completion: @escaping (_ success: Bool, _ error: NSError?, _ forecastDataBaseInstanceArray : [ForecastDataBaseClass]?) -> (Void)) {
        
        let urlString = WFConstants.getForecastURL(requestParams: requestParams)
        
        Alamofire.request(urlString, method: .get, parameters: nil, encoding: URLEncoding.default, headers: [:]).responseJSON(completionHandler: { (response) in
            
            if response.response?.statusCode == 200 { // request successful
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    
                    var forecastDataBaseInstanceArray : [ForecastDataBaseClass] = []
                    
                    if JSON as? [AnyObject] != nil {
                        for item in (JSON as! [AnyObject]) {
                            let forecastDataBaseInstance = Mapper<ForecastDataBaseClass>().map(JSON: (item  as? [String:AnyObject]) ?? ["":""])
                            if forecastDataBaseInstance != nil {
                                forecastDataBaseInstanceArray.append(forecastDataBaseInstance!)
                            }
                        }
                    }
                    
                    completion(true, nil, forecastDataBaseInstanceArray)
                }
            } else { // request failed
                completion(false, response.result.error as NSError?, nil)
            }
        })
    }
}



