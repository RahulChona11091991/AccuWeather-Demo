//
//  WFForecastDetailTableViewCell.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 11/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import UIKit

class WFForecastDetailTableViewCell: UITableViewCell {

    //MARK: - IBOUTLETS -
    @IBOutlet weak var iconPhraseLabel: UILabel!
    @IBOutlet weak var isDaylightLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var realFeelTemperatureLabel: UILabel!
    @IBOutlet weak var wetBulbTemperatureLabel: UILabel!
    @IBOutlet weak var dewPointLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var windGustLabel: UILabel!
    @IBOutlet weak var relativeHumidityLabel: UILabel!
    @IBOutlet weak var visibilityLabel: UILabel!
    @IBOutlet weak var ceilingLabel: UILabel!
    @IBOutlet weak var uvIndexTextLabel: UILabel!
    @IBOutlet weak var precipitationProbabilityLabel: UILabel!
    @IBOutlet weak var rainProbabilityLabel: UILabel!
    @IBOutlet weak var snowProbabilityLabel: UILabel!
    @IBOutlet weak var iceProbabilityLabel: UILabel!
    @IBOutlet weak var totalLiquidLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var snowLabel: UILabel!
    @IBOutlet weak var iceLabel: UILabel!
    @IBOutlet weak var cloudCoverLabel: UILabel!
    
    @IBOutlet weak var baseView: UIView!
    
    func configCell(forecastDataBaseInstance:ForecastDataBaseClass) {
        
        self.iconPhraseLabel?.text = "IconPhrase: " + ((forecastDataBaseInstance.iconPhrase) ?? "N/A")
        self.isDaylightLabel?.text = "IsDayLight: " + String(describing: forecastDataBaseInstance.isDaylight ?? false)
        self.temperatureLabel?.text = "Temperature: " + "\(forecastDataBaseInstance.temperature?.value ?? 0)" + (forecastDataBaseInstance.temperature?.unit ?? "")
        self.realFeelTemperatureLabel?.text = "RealFeelTemperature: " + "\(forecastDataBaseInstance.realFeelTemperature?.value ?? 0)" + (forecastDataBaseInstance.temperature?.unit ?? "")
        self.wetBulbTemperatureLabel?.text = "WetBulbTemperature: " + "\(forecastDataBaseInstance.wetBulbTemperature?.value ?? 0)" + (forecastDataBaseInstance.wetBulbTemperature?.unit ?? "")
        self.dewPointLabel?.text = "DewPoint: " + "\(forecastDataBaseInstance.dewPoint?.value ?? 0)" + (forecastDataBaseInstance.dewPoint?.unit ?? "")
        self.windLabel?.text = "Wind: " + "\(forecastDataBaseInstance.wind?.direction?.degrees ?? 0)" + (forecastDataBaseInstance.wind?.direction?.localized ?? "")
        self.windGustLabel?.text = "WindGust: " + "\(forecastDataBaseInstance.windGust?.speed?.value ?? 0)" + (forecastDataBaseInstance.windGust?.speed?.unit ?? "")
        self.relativeHumidityLabel?.text = "RelativeHumidity: " + "\(forecastDataBaseInstance.relativeHumidity ?? 0)"
        self.visibilityLabel?.text = "Visibility: " + "\(forecastDataBaseInstance.visibility?.value ?? 0)" + (forecastDataBaseInstance.visibility?.unit ?? "")
        self.ceilingLabel?.text = "Ceiling: " + "\(forecastDataBaseInstance.ceiling?.value ?? 0)" + (forecastDataBaseInstance.ceiling?.unit ?? "")
        self.uvIndexTextLabel?.text = "UVIndexText: " + "\(forecastDataBaseInstance.uVIndex ?? 0)"
        self.precipitationProbabilityLabel?.text = "PrecipitationProbability: " + "\(forecastDataBaseInstance.precipitationProbability ?? 0)"
        self.rainProbabilityLabel?.text = "RainProbability: " + "\(forecastDataBaseInstance.rainProbability ?? 0)"
        self.snowProbabilityLabel?.text = "SnowProbability: " + "\(forecastDataBaseInstance.snowProbability ?? 0)"
        self.iceProbabilityLabel?.text = "IceProbability: " + "\(forecastDataBaseInstance.iceProbability ?? 0)"
        self.totalLiquidLabel?.text = "TotalLiquid: " + "\(forecastDataBaseInstance.totalLiquid?.value ?? 0)" + (forecastDataBaseInstance.totalLiquid?.unit ?? "")
        self.rainLabel?.text = "Rain: " + "\(forecastDataBaseInstance.rain?.value ?? 0)" + (forecastDataBaseInstance.rain?.unit ?? "")
        self.snowLabel?.text = "Snow: " + "\(forecastDataBaseInstance.snow?.value ?? 0)" + (forecastDataBaseInstance.snow?.unit ?? "")
        self.iceLabel?.text = "Ice: " + "\(forecastDataBaseInstance.ice?.value ?? 0)" + (forecastDataBaseInstance.ice?.unit ?? "")
        self.cloudCoverLabel?.text = "CloudCover: " + "\(forecastDataBaseInstance.cloudCover ?? 0)"
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
