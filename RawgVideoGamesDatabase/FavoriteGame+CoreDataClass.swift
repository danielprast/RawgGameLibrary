//
//  FavoriteGame+CoreDataClass.swift
//  RawgVideoGamesDatabase
//
//  Created by Daniel Prastiwa on 08/08/23.
//

import CoreData


@objc(FavoriteGame)
class FavoriteGame: NSManagedObject {
  
  internal func getFavorite(title: String, context: NSManagedObjectContext) -> FavoriteGame? {
    let request: NSFetchRequest<FavoriteGame> = FavoriteGame.fetchRequest()
    request.predicate = NSPredicate(format: "title = %@", title)
    
    do {
      let results = try context.fetch(request)
      if results.count > 0 {
        return results.first
      } else {
        return nil
      }
    } catch {
      fatalError("Cannot get favorite game")
    }
  }
  
}
