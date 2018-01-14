//
//  AutoCompleteBaseClass.swift
//
//  Created by Rahul Chona on 10/01/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class AutoCompleteBaseClass: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let country = "Country"
    static let localizedName = "LocalizedName"
    static let version = "Version"
    static let administrativeArea = "AdministrativeArea"
    static let key = "Key"
    static let rank = "Rank"
    static let type = "Type"
  }

  // MARK: Properties
  public var country: Country?
  public var localizedName: String?
  public var version: Int?
  public var administrativeArea: AdministrativeArea?
  public var key: String?
  public var rank: Int?
  public var type: String?

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
    country <- map[SerializationKeys.country]
    localizedName <- map[SerializationKeys.localizedName]
    version <- map[SerializationKeys.version]
    administrativeArea <- map[SerializationKeys.administrativeArea]
    key <- map[SerializationKeys.key]
    rank <- map[SerializationKeys.rank]
    type <- map[SerializationKeys.type]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = country { dictionary[SerializationKeys.country] = value.dictionaryRepresentation() }
    if let value = localizedName { dictionary[SerializationKeys.localizedName] = value }
    if let value = version { dictionary[SerializationKeys.version] = value }
    if let value = administrativeArea { dictionary[SerializationKeys.administrativeArea] = value.dictionaryRepresentation() }
    if let value = key { dictionary[SerializationKeys.key] = value }
    if let value = rank { dictionary[SerializationKeys.rank] = value }
    if let value = type { dictionary[SerializationKeys.type] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.country = aDecoder.decodeObject(forKey: SerializationKeys.country) as? Country
    self.localizedName = aDecoder.decodeObject(forKey: SerializationKeys.localizedName) as? String
    self.version = aDecoder.decodeObject(forKey: SerializationKeys.version) as? Int
    self.administrativeArea = aDecoder.decodeObject(forKey: SerializationKeys.administrativeArea) as? AdministrativeArea
    self.key = aDecoder.decodeObject(forKey: SerializationKeys.key) as? String
    self.rank = aDecoder.decodeObject(forKey: SerializationKeys.rank) as? Int
    self.type = aDecoder.decodeObject(forKey: SerializationKeys.type) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(country, forKey: SerializationKeys.country)
    aCoder.encode(localizedName, forKey: SerializationKeys.localizedName)
    aCoder.encode(version, forKey: SerializationKeys.version)
    aCoder.encode(administrativeArea, forKey: SerializationKeys.administrativeArea)
    aCoder.encode(key, forKey: SerializationKeys.key)
    aCoder.encode(rank, forKey: SerializationKeys.rank)
    aCoder.encode(type, forKey: SerializationKeys.type)
  }

}
