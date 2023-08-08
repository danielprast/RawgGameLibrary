//
//  AppDependencyContainer.swift
//  Created by Daniel Prastiwa on 08/08/23.
//

import Foundation


public class AppDependencyContainer {
  
  public let coreDataStack: CoreDataStack
  
  public init(
    coreDataStack: CoreDataStack
  ) {
    self.coreDataStack = coreDataStack
  }
  
  public func setupDependencies() {
    
  }
  
}
