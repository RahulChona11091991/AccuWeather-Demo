//
//  Constants.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 12/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import Foundation

struct WFConstants {
    
    //MARK: - CONSTANTS -
    enum StoryBoardIdentifier:String {
        case KMain = "Main"
    }
    
    enum NetworkConstants:String {
        case KBaseUrl = "https://apidev.accuweather.com"
        case KApiKey = "eey3z2dBNI896hIG08j7q1uxXzTxJqkZ"
        enum EndPoints:String {
            case KAutoComplete = "/locations/v1/cities/autocomplete"
            case KForecastDetails = "/forecasts/v1/hourly/24hour/"
        }
    }
    
    enum ViewControllerIdentifiers:String {
        case KSearchLocationVCIdentifier  = "WFSearchLocationViewController"
        case KForecastDetailsVCIdentifier  = "WFForecastDetailViewController"
    }
    
    //MARK: - HELPER METHODS -
    static func getForecastURL(requestParams: [String: Any]) -> String {
        let forecastURL = NetworkConstants.KBaseUrl.rawValue + NetworkConstants.EndPoints.KForecastDetails.rawValue + "\(requestParams["LocationKey"] ?? "")" + ".json?apikey=\(NetworkConstants.KApiKey.rawValue)&language=en&details=true"
        return forecastURL
    }
    
    static func getAutoCompleteURL(requestParams: [String: Any]) -> String {
        let autoCompleteURL = NetworkConstants.KBaseUrl.rawValue + NetworkConstants.EndPoints.KAutoComplete.rawValue + "?apikey=\(NetworkConstants.KApiKey.rawValue)&q=" + ((requestParams["q"] as? String) ?? "")
        return autoCompleteURL
    }
}
