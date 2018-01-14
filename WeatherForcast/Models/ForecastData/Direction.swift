//
//  Direction.swift
//
//  Created by Rahul Chona on 10/01/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class Direction: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let degrees = "Degrees"
    static let english = "English"
    static let localized = "Localized"
  }

  // MARK: Properties
  public var degrees: Int?
  public var english: String?
  public var localized: String?

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
    degrees <- map[SerializationKeys.degrees]
    english <- map[SerializationKeys.english]
    localized <- map[SerializationKeys.localized]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = degrees { dictionary[SerializationKeys.degrees] = value }
    if let value = english { dictionary[SerializationKeys.english] = value }
    if let value = localized { dictionary[SerializationKeys.localized] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.degrees = aDecoder.decodeObject(forKey: SerializationKeys.degrees) as? Int
    self.english = aDecoder.decodeObject(forKey: SerializationKeys.english) as? String
    self.localized = aDecoder.decodeObject(forKey: SerializationKeys.localized) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(degrees, forKey: SerializationKeys.degrees)
    aCoder.encode(english, forKey: SerializationKeys.english)
    aCoder.encode(localized, forKey: SerializationKeys.localized)
  }

}
