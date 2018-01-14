//
//  RealFeelTemperature.swift
//
//  Created by Rahul Chona on 10/01/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class RealFeelTemperature: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let unit = "Unit"
    static let value = "Value"
    static let unitType = "UnitType"
  }

  // MARK: Properties
  public var unit: String?
  public var value: Int?
  public var unitType: Int?

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
    unit <- map[SerializationKeys.unit]
    value <- map[SerializationKeys.value]
    unitType <- map[SerializationKeys.unitType]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = unit { dictionary[SerializationKeys.unit] = value }
    if let value = value { dictionary[SerializationKeys.value] = value }
    if let value = unitType { dictionary[SerializationKeys.unitType] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.unit = aDecoder.decodeObject(forKey: SerializationKeys.unit) as? String
    self.value = aDecoder.decodeObject(forKey: SerializationKeys.value) as? Int
    self.unitType = aDecoder.decodeObject(forKey: SerializationKeys.unitType) as? Int
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(unit, forKey: SerializationKeys.unit)
    aCoder.encode(value, forKey: SerializationKeys.value)
    aCoder.encode(unitType, forKey: SerializationKeys.unitType)
  }

}
