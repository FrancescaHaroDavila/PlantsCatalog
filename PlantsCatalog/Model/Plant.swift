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
  struct reminders {
    var days: Int?
    var message: String?
  }
  var needsFertilizer = true
  var slugsProne = true
  var text = ""
  
  init(jsonObject: JSON) {
//    super.init()
//    self.name = json["name"] ?? ""
//    self.text = json["text"] ?? ""
//    //self.image = json[""] ?? ""
//    if let daysToHarvestStr = json["daysToHarvest"],
//      let daysToHarvest = Int(daysToHarvestStr) {
//      self.daysToHarvest = daysToHarvest  }
//    if let diameterStr = json["diameter"],
//      let diameter = Int(diameterStr) {
//      self.diameter = diameter  }
//    if let diameterStr = json["diameter"],
//      let diameter = Int(diameterStr) {
//      self.diameter = diameter  }
//    if let varieties = jsonObject["varieties"].Arr {
//      self.price = Double(price) ?? 0.0
    if let name = jsonObject["name"].string {
      self.name = name
    }
    if let varieties = jsonObject["varieties"].arrayObject {
      self.varieties = varieties as! [String]
    }
    

    }
  
}
