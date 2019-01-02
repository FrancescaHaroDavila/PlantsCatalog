//
//  PlantsFactory.swift
//  PlantsCatalog
//
//  Created by Francesca Valeria Haro Dávila on 12/27/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation
import SwiftyJSON

class PlantFactory {
  class func createPlant() ->[Plant]{
    
    let plant1:JSON = [ "name": "Carrot",
                                "daysToHarvest":75,
                                "diameter": 6,
                                "varieties": ["General"],
                                "needsFertilizer": false,
                                "slugProne": false,
                                "text": "Carrot is a hardy, cool-season biennial that is grown for the thickened root it produces in its first growing season. Although carrots can endure summer heat in many areas, they grow best when planted in early spring. Midsummer plantings, that mature quickly in cool fall weather, produce tender, sweet \"baby\" carrots that are much prized. Carrots are eaten both raw and cooked and they can be stored for winter use. They are rich in carotene (the source of vitamin A) and high in fiber and sugar content."]
    
    let plant2:JSON = [ "name": "Lettuce",
                                "daysToHarvest": 60,
                                "diameter": 12,
                                "varieties": ["General"],
                                "needsFertilizer": false,
                                "slugProne": true,
                                "text": "Lettuce is a fairly hardy, cool-weather vegetable that thrives when the average daily temperature is between 60 and 70°F. It should be planted in early spring or late summer. At high temperatures, growth is stunted, the leaves may be bitter and the seedstalk forms and elongates rapidly. Some types and varieties of lettuce withstand heat better than others."]
    
    let plant3:JSON = [ "name": "Radish",
                                "daysToHarvest": 25,
                                "diameter": 6,
                                "varieties": ["General", "Breakfast", "Easter Egg"],
                                "needsFertilizer": false,
                                "slugProne": false,
                                "text": "Radish is a cool-season, fast-maturing, easy-to-grow vegetable. Garden radishes can be grown wherever there is sun and moist, fertile soil, even on the smallest city lot. Early varieties usually grow best in the cool days of early spring, but some later-maturing varieties can be planted for summer use. The variety French Breakfast holds up and grows better than most early types in summer heat if water is supplied regularly. Additional sowings of spring types can begin in late summer, to mature in the cooler, more moist days of fall. Winter radishes are sown in midsummer to late summer, much as fall turnips. They are slower to develop than spring radishes; and they grow considerably larger, remain crisp longer, are usually more pungent and hold in the ground or store longer than spring varieties."]
    
    let plant4:JSON = [ "name": "Summer Squash",
                                "daysToHarvest": 55,
                                "diameter": 36,
                                "varieties": ["General", "Patty Pan", "Zucchini"],
                                "needsFertilizer": false,
                                "slugProne": false,
                                "text": "Summer squash (also known as vegetable or Italian marrow), is a tender, warm-season vegetable that can be grown throughout the United States anytime during the warm, frost-free season. Summer squash differs from fall and winter squash in that it is selected to be harvested before the rind hardens and the fruit matures. It grows on bush-type plants that do not spread like the plants of fall and winter squash and pumpkin. A few healthy and well-maintained plants produce abundant yields."]
    
    let plant5:JSON = [ "name": "Tomato",
                                "daysToHarvest": 70, "diameter": 24,
                                "varieties": ["General", "Brandywine", "Early Girl", "Stupice"],
                                "needsFertilizer": true,
                                "slugProne": false,
                                "text": "Tomato, is today the most popular garden vegetable in America. For many years, however, tomatoes (then called \"love apples\") were considered poisonous and were grown solely for their ornamental value. Tomatoes are usually easy to grow and a few plants provide an adequate harvest for most families. The quality of fruit picked in the garden when fully ripe far surpasses anything available on the market, even in season. The tomato plant is a tender, warm-season perennial that is grown as an annual in summer gardens all over the continental United States. Spring and fall freezes limit the outdoor growing season."]
    
    let allJsonPlants = [plant1, plant2, plant3, plant4, plant5]
    var plants:[Plant] = []
    
    for json in allJsonPlants {
      let plant = Plant(jsonObject: json)
      plants.append(plant)
    }
    return plants
    }
}


