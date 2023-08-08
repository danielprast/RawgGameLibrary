//
//  ViewController.swift
//  RawgVideoGamesDatabase
//
//  Created by Daniel Prastiwa on 08/08/23.
//

import Foundation
import UIKit
import iOSAppSource
import CoreData


class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}



class AppCobaController: UIViewController {
  
  var coreDataStack: CoreDataStack!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .yellow
    
    let moc = coreDataStack.persistentContainer.viewContext    
    let favGame = FavoriteGame(context: moc)
    let favorites = favGame.getFavorite(title: "Joss Gandoss", context: moc)
    
    if favorites != nil {
      print(favGame.title)
    } else {
      print("No favorite game is found")
    }
  }
  
}
