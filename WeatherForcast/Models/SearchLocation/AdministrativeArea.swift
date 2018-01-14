//
//  AdministrativeArea.swift
//
//  Created by Rahul Chona on 10/01/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class AdministrativeArea: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let iD = "ID"
    static let localizedName = "LocalizedName"
  }

  // MARK: Properties
  public var iD: String?
  public var localizedName: String?

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
    iD <- map[SerializationKeys.iD]
    localizedName <- map[SerializationKeys.localizedName]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = iD { dictionary[SerializationKeys.iD] = value }
    if let value = localizedName { dictionary[SerializationKeys.localizedName] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.iD = aDecoder.decodeObject(forKey: SerializationKeys.iD) as? String
    self.localizedName = aDecoder.decodeObject(forKey: SerializationKeys.localizedName) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(iD, forKey: SerializationKeys.iD)
    aCoder.encode(localizedName, forKey: SerializationKeys.localizedName)
  }

}
