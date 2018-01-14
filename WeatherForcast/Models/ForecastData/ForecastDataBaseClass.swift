//
//  ForecastDataBaseClass.swift
//
//  Created by Rahul Chona on 10/01/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class ForecastDataBaseClass: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let mobileLink = "MobileLink"
    static let ice = "Ice"
    static let iconPhrase = "IconPhrase"
    static let uVIndex = "UVIndex"
    static let cloudCover = "CloudCover"
    static let wetBulbTemperature = "WetBulbTemperature"
    static let snowProbability = "SnowProbability"
    static let snow = "Snow"
    static let windGust = "WindGust"
    static let rain = "Rain"
    static let wind = "Wind"
    static let realFeelTemperature = "RealFeelTemperature"
    static let totalLiquid = "TotalLiquid"
    static let ceiling = "Ceiling"
    static let uVIndexText = "UVIndexText"
    static let visibility = "Visibility"
    static let temperature = "Temperature"
    static let epochDateTime = "EpochDateTime"
    static let precipitationProbability = "PrecipitationProbability"
    static let isDaylight = "IsDaylight"
    static let link = "Link"
    static let dewPoint = "DewPoint"
    static let weatherIcon = "WeatherIcon"
    static let iceProbability = "IceProbability"
    static let rainProbability = "RainProbability"
    static let dateTime = "DateTime"
    static let relativeHumidity = "RelativeHumidity"
  }

  // MARK: Properties
  public var mobileLink: String?
  public var ice: Ice?
  public var iconPhrase: String?
  public var uVIndex: Int?
  public var cloudCover: Int?
  public var wetBulbTemperature: WetBulbTemperature?
  public var snowProbability: Int?
  public var snow: Snow?
  public var windGust: WindGust?
  public var rain: Rain?
  public var wind: Wind?
  public var realFeelTemperature: RealFeelTemperature?
  public var totalLiquid: TotalLiquid?
  public var ceiling: Ceiling?
  public var uVIndexText: String?
  public var visibility: Visibility?
  public var temperature: Temperature?
  public var epochDateTime: Double?
  public var precipitationProbability: Int?
  public var isDaylight: Bool? = false
  public var link: String?
  public var dewPoint: DewPoint?
  public var weatherIcon: Int?
  public var iceProbability: Int?
  public var rainProbability: Int?
  public var dateTime: String?
  public var relativeHumidity: Int?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public required init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    mobileLink <- map[SerializationKeys.mobileLink]
    ice <- map[SerializationKeys.ice]
    iconPhrase <- map[SerializationKeys.iconPhrase]
    uVIndex <- map[SerializationKeys.uVIndex]
    cloudCover <- map[SerializationKeys.cloudCover]
    wetBulbTemperature <- map[SerializationKeys.wetBulbTemperature]
    snowProbability <- map[SerializationKeys.snowProbability]
    snow <- map[SerializationKeys.snow]
    windGust <- map[SerializationKeys.windGust]
    rain <- map[SerializationKeys.rain]
    wind <- map[SerializationKeys.wind]
    realFeelTemperature <- map[SerializationKeys.realFeelTemperature]
    totalLiquid <- map[SerializationKeys.totalLiquid]
    ceiling <- map[SerializationKeys.ceiling]
    uVIndexText <- map[SerializationKeys.uVIndexText]
    visibility <- map[SerializationKeys.visibility]
    temperature <- map[SerializationKeys.temperature]
    epochDateTime <- map[SerializationKeys.epochDateTime]
    precipitationProbability <- map[SerializationKeys.precipitationProbability]
    isDaylight <- map[SerializationKeys.isDaylight]
    link <- map[SerializationKeys.link]
    dewPoint <- map[SerializationKeys.dewPoint]
    weatherIcon <- map[SerializationKeys.weatherIcon]
    iceProbability <- map[SerializationKeys.iceProbability]
    rainProbability <- map[SerializationKeys.rainProbability]
    dateTime <- map[SerializationKeys.dateTime]
    relativeHumidity <- map[SerializationKeys.relativeHumidity]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = mobileLink { dictionary[SerializationKeys.mobileLink] = value }
    if let value = ice { dictionary[SerializationKeys.ice] = value.dictionaryRepresentation() }
    if let value = iconPhrase { dictionary[SerializationKeys.iconPhrase] = value }
    if let value = uVIndex { dictionary[SerializationKeys.uVIndex] = value }
    if let value = cloudCover { dictionary[SerializationKeys.cloudCover] = value }
    if let value = wetBulbTemperature { dictionary[SerializationKeys.wetBulbTemperature] = value.dictionaryRepresentation() }
    if let value = snowProbability { dictionary[SerializationKeys.snowProbability] = value }
    if let value = snow { dictionary[SerializationKeys.snow] = value.dictionaryRepresentation() }
    if let value = windGust { dictionary[SerializationKeys.windGust] = value.dictionaryRepresentation() }
    if let value = rain { dictionary[SerializationKeys.rain] = value.dictionaryRepresentation() }
    if let value = wind { dictionary[SerializationKeys.wind] = value.dictionaryRepresentation() }
    if let value = realFeelTemperature { dictionary[SerializationKeys.realFeelTemperature] = value.dictionaryRepresentation() }
    if let value = totalLiquid { dictionary[SerializationKeys.totalLiquid] = value.dictionaryRepresentation() }
    if let value = ceiling { dictionary[SerializationKeys.ceiling] = value.dictionaryRepresentation() }
    if let value = uVIndexText { dictionary[SerializationKeys.uVIndexText] = value }
    if let value = visibility { dictionary[SerializationKeys.visibility] = value.dictionaryRepresentation() }
    if let value = temperature { dictionary[SerializationKeys.temperature] = value.dictionaryRepresentation() }
    if let value = epochDateTime { dictionary[SerializationKeys.epochDateTime] = value }
    if let value = precipitationProbability { dictionary[SerializationKeys.precipitationProbability] = value }
    dictionary[SerializationKeys.isDaylight] = isDaylight
    if let value = link { dictionary[SerializationKeys.link] = value }
    if let value = dewPoint { dictionary[SerializationKeys.dewPoint] = value.dictionaryRepresentation() }
    if let value = weatherIcon { dictionary[SerializationKeys.weatherIcon] = value }
    if let value = iceProbability { dictionary[SerializationKeys.iceProbability] = value }
    if let value = rainProbability { dictionary[SerializationKeys.rainProbability] = value }
    if let value = dateTime { dictionary[SerializationKeys.dateTime] = value }
    if let value = relativeHumidity { dictionary[SerializationKeys.relativeHumidity] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.mobileLink = aDecoder.decodeObject(forKey: SerializationKeys.mobileLink) as? String
    self.ice = aDecoder.decodeObject(forKey: SerializationKeys.ice) as? Ice
    self.iconPhrase = aDecoder.decodeObject(forKey: SerializationKeys.iconPhrase) as? String
    self.uVIndex = aDecoder.decodeObject(forKey: SerializationKeys.uVIndex) as? Int
    self.cloudCover = aDecoder.decodeObject(forKey: SerializationKeys.cloudCover) as? Int
    self.wetBulbTemperature = aDecoder.decodeObject(forKey: SerializationKeys.wetBulbTemperature) as? WetBulbTemperature
    self.snowProbability = aDecoder.decodeObject(forKey: SerializationKeys.snowProbability) as? Int
    self.snow = aDecoder.decodeObject(forKey: SerializationKeys.snow) as? Snow
    self.windGust = aDecoder.decodeObject(forKey: SerializationKeys.windGust) as? WindGust
    self.rain = aDecoder.decodeObject(forKey: SerializationKeys.rain) as? Rain
    self.wind = aDecoder.decodeObject(forKey: SerializationKeys.wind) as? Wind
    self.realFeelTemperature = aDecoder.decodeObject(forKey: SerializationKeys.realFeelTemperature) as? RealFeelTemperature
    self.totalLiquid = aDecoder.decodeObject(forKey: SerializationKeys.totalLiquid) as? TotalLiquid
    self.ceiling = aDecoder.decodeObject(forKey: SerializationKeys.ceiling) as? Ceiling
    self.uVIndexText = aDecoder.decodeObject(forKey: SerializationKeys.uVIndexText) as? String
    self.visibility = aDecoder.decodeObject(forKey: SerializationKeys.visibility) as? Visibility
    self.temperature = aDecoder.decodeObject(forKey: SerializationKeys.temperature) as? Temperature
    self.epochDateTime = aDecoder.decodeObject(forKey: SerializationKeys.epochDateTime) as? Double
    self.precipitationProbability = aDecoder.decodeObject(forKey: SerializationKeys.precipitationProbability) as? Int
    self.isDaylight = aDecoder.decodeBool(forKey: SerializationKeys.isDaylight)
    self.link = aDecoder.decodeObject(forKey: SerializationKeys.link) as? String
    self.dewPoint = aDecoder.decodeObject(forKey: SerializationKeys.dewPoint) as? DewPoint
    self.weatherIcon = aDecoder.decodeObject(forKey: SerializationKeys.weatherIcon) as? Int
    self.iceProbability = aDecoder.decodeObject(forKey: SerializationKeys.iceProbability) as? Int
    self.rainProbability = aDecoder.decodeObject(forKey: SerializationKeys.rainProbability) as? Int
    self.dateTime = aDecoder.decodeObject(forKey: SerializationKeys.dateTime) as? String
    self.relativeHumidity = aDecoder.decodeObject(forKey: SerializationKeys.relativeHumidity) as? Int
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(mobileLink, forKey: SerializationKeys.mobileLink)
    aCoder.encode(ice, forKey: SerializationKeys.ice)
    aCoder.encode(iconPhrase, forKey: SerializationKeys.iconPhrase)
    aCoder.encode(uVIndex, forKey: SerializationKeys.uVIndex)
    aCoder.encode(cloudCover, forKey: SerializationKeys.cloudCover)
    aCoder.encode(wetBulbTemperature, forKey: SerializationKeys.wetBulbTemperature)
    aCoder.encode(snowProbability, forKey: SerializationKeys.snowProbability)
    aCoder.encode(snow, forKey: SerializationKeys.snow)
    aCoder.encode(windGust, forKey: SerializationKeys.windGust)
    aCoder.encode(rain, forKey: SerializationKeys.rain)
    aCoder.encode(wind, forKey: SerializationKeys.wind)
    aCoder.encode(realFeelTemperature, forKey: SerializationKeys.realFeelTemperature)
    aCoder.encode(totalLiquid, forKey: SerializationKeys.totalLiquid)
    aCoder.encode(ceiling, forKey: SerializationKeys.ceiling)
    aCoder.encode(uVIndexText, forKey: SerializationKeys.uVIndexText)
    aCoder.encode(visibility, forKey: SerializationKeys.visibility)
    aCoder.encode(temperature, forKey: SerializationKeys.temperature)
    aCoder.encode(epochDateTime, forKey: SerializationKeys.epochDateTime)
    aCoder.encode(precipitationProbability, forKey: SerializationKeys.precipitationProbability)
    aCoder.encode(isDaylight, forKey: SerializationKeys.isDaylight)
    aCoder.encode(link, forKey: SerializationKeys.link)
    aCoder.encode(dewPoint, forKey: SerializationKeys.dewPoint)
    aCoder.encode(weatherIcon, forKey: SerializationKeys.weatherIcon)
    aCoder.encode(iceProbability, forKey: SerializationKeys.iceProbability)
    aCoder.encode(rainProbability, forKey: SerializationKeys.rainProbability)
    aCoder.encode(dateTime, forKey: SerializationKeys.dateTime)
    aCoder.encode(relativeHumidity, forKey: SerializationKeys.relativeHumidity)
  }

}
