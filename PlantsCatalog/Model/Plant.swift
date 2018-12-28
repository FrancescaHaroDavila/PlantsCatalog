//
//  Plant.swift
//  PlantsCatalog
//
//  Created by Francesca Valeria Haro Dávila on 12/27/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation
import UIKit

class Plant: NSObject {
  
  // MARK: -Properties
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
  
  
}
