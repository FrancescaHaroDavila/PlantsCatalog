//
//  Plant.swift
//  PlantsCatalog
//
//  Created by Francesca Valeria Haro Dávila on 12/27/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class Plant: NSObject {
  
  // MARK: -Properties
  //var image:UIImage? {
  //return UIImage(named: self.image)}
  var name = ""
  var daysToHarvest = 0
  var diameter = 0
  var varieties: [String] = []
  var needsFertilizer = true
  var slugsProne = true
  var text = ""
    
  init(jsonObject : JSON) {

    if let name = jsonObject["name"].string {
      self.name = name
    }
    if let daysToHarvest = jsonObject["daysToHarvest"].int {
      self.daysToHarvest = daysToHarvest
    }
    if let diameter = jsonObject["diameter"].int {
      self.diameter = diameter
    }
    for variety in jsonObject["varieties"].array! {
      varieties.append(variety.stringValue)
    }
    if let needsFertilizer = jsonObject["needsFertilizer"].bool {
      self.needsFertilizer = needsFertilizer
    }
    if let slugsProne = jsonObject["slugsProne"].bool {
      self.slugsProne = slugsProne
    }
    if let text = jsonObject["text"].string {
      self.text = text
    }
    
  }
}
