//
//  Wind.swift
//
//  Created by Rahul Chona on 10/01/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class Wind: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let speed = "Speed"
    static let direction = "Direction"
  }

  // MARK: Properties
  public var speed: Speed?
  public var direction: Direction?

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
    speed <- map[SerializationKeys.speed]
    direction <- map[SerializationKeys.direction]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = speed { dictionary[SerializationKeys.speed] = value.dictionaryRepresentation() }
    if let value = direction { dictionary[SerializationKeys.direction] = value.dictionaryRepresentation() }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.speed = aDecoder.decodeObject(forKey: SerializationKeys.speed) as? Speed
    self.direction = aDecoder.decodeObject(forKey: SerializationKeys.direction) as? Direction
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(speed, forKey: SerializationKeys.speed)
    aCoder.encode(direction, forKey: SerializationKeys.direction)
  }

}
