//
//  AutoCompleteBaseClass+Services.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 11/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

extension AutoCompleteBaseClass {
    
    // MARK:- GET AUTOCOMPLETE RESULTS
    class func getAutoCompleteResults(requestParams: [String: Any], completion: @escaping (_ success: Bool, _ error: NSError?, _ autoCompleteBaseInstancesArray : [AutoCompleteBaseClass]?) -> (Void)) {
        
        let urlString = WFConstants.getAutoCompleteURL(requestParams: requestParams)
        
        Alamofire.request(urlString, method: .get, parameters: nil, encoding: URLEncoding.default, headers: [:]).responseJSON(completionHandler: { (response) in
            
            if response.response?.statusCode == 200 { // request successful
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    
                    var autoCompleteBaseInstanceArray : [AutoCompleteBaseClass] = []
                    
                    if JSON as? [AnyObject] != nil {
                        for item in (JSON as! [AnyObject]) {
                            let autoCompleteBaseInstance = Mapper<AutoCompleteBaseClass>().map(JSON: (item  as? [String:AnyObject]) ?? ["":""])
                            if autoCompleteBaseInstance != nil {
                                autoCompleteBaseInstanceArray.append(autoCompleteBaseInstance!)
                            }
                        }
                    }
                    
                    completion(true, nil, autoCompleteBaseInstanceArray)
                }
            } else { // request failed
                completion(false, response.result.error as NSError?, nil)
            }
        })
    }
}


