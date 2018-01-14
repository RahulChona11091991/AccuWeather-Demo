//
//  StoryBoard+Additions.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 12/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import Foundation
import UIKit

//MARK: - STORYBOARD EXTENSION -
extension UIStoryboard {
    
    class func getMainStoryBoard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func getViewController(withIdentifier: String) -> UIViewController? {
        return UIStoryboard.getMainStoryBoard().instantiateViewController(withIdentifier: withIdentifier)
    }
    
    class func getForecastDetailViewController(forecastDataBaseInstanceArray: [ForecastDataBaseClass]) -> WFForecastDetailViewController? {
        let instance = UIStoryboard.getMainStoryBoard().instantiateViewController(withIdentifier: "WFForecastDetailViewControllerID") as! WFForecastDetailViewController
        instance.forecastDataBaseInstanceArray = forecastDataBaseInstanceArray
        return instance
    }
}
