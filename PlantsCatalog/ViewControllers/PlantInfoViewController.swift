//
//  PlantInfoViewController.swift
//  PlantsCatalog
//
//  Created by Francesca Valeria Haro Dávila on 12/28/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PlantInfoViewController: UIViewController {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var textView: UITextView!
  @IBOutlet weak var daysToHarvestLabel: UILabel!
  @IBOutlet weak var fertilizerLabel: UILabel!
  @IBOutlet weak var slugsProneLabel: UILabel!
  @IBOutlet weak var diameterLabel: UILabel!
  @IBOutlet weak var varietiesLabel: UILabel!
  var plant: Plant?
  
  //MARK: - Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setPlantData()
  }
  
  //MARK: - Private
  
  func setPlantData(){
    self.nameLabel.text = plant?.name
    self.textView.text = plant?.text
    self.daysToHarvestLabel.text = plant?.daysToHarvest.description
    if plant?.needsFertilizer == true {
      self.fertilizerLabel.text = "Recommended"
    } else{
      self.fertilizerLabel.text = "Not needed"
    }
    if plant?.slugsProne == true {
      self.slugsProneLabel.text = "Yes"
    } else{
      self.slugsProneLabel.text = "No"
    }
    self.diameterLabel.text = (plant?.diameter.description)! + " cm"
    
    for variety in plant?.varieties ?? [] {
      if varietiesLabel.text != ""{
      self.varietiesLabel.text = (self.varietiesLabel.text ?? "") + ", " + variety
      } else {
        varietiesLabel.text = variety
      }
    }
  }
}
