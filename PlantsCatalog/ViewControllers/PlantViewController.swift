//
//  ViewController.swift
//  PlantsCatalog
//
//  Created by Francesca Valeria Haro Dávila on 12/27/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PlantViewController: UIViewController {
  let PlantTableViewCellIdentifier = "PlantTableViewCell"
  let PlantInfoViewControllerIdentifier = "PlantInfoViewController"
  let SegueIdentifier = "PlantTableViewCellToPlantInfoViewController"
  @IBOutlet weak var tableView: UITableView!
  var allPlants:[Plant] = []
  var plantFactoryInstance = PlantFactory()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    allPlants = PlantFactory.createPlant()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == SegueIdentifier {
      if let destinationVC = segue.destination as? PlantInfoViewController {
        if let indexPath = tableView.indexPathForSelectedRow {
          let plant = self.allPlants[indexPath.row]
     
        }
      }
    }
  }
}


