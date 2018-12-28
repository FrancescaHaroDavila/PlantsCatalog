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
  @IBOutlet weak var reminderMessageLabel: UILabel!
  @IBOutlet weak var reminderDaysLabel: UILabel!
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
//    self.daysToHarvestLabel.text = plant?.daysToHarvest
//    self.fertilizerLabel.text = plant?.needsFertilizer
//    self.slugsProneLabel.text = plant?.slugsProne
//    self.diameterLabel.text = plant?.diameter
//    self.varietiesLabel.text = plant?.varieties
//    self.reminderDaysLabel.text = plant
    
  }
}
