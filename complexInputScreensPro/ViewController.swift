//
//  ViewController.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-08.
//

import UIKit

class ViewController: UIViewController {
  
  let tableViewController1 = AddRegistrationTableViewController()
  let tableViewController2 = DateTableViewController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Add the child view controllers
    addChild(tableViewController1)
    addChild(tableViewController2)
    
    // Add the views of the child view controllers as subviews of the main view controller's view
    view.addSubview(tableViewController1.view)
    view.addSubview(tableViewController2.view)
    
    // Position and layout the child view controllers' views within the main view controller's view
    tableViewController1.view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 2)
    tableViewController2.view.frame = CGRect(x: 0, y: view.frame.height / 2, width: view.frame.width, height: view.frame.height / 2)
    
    // Notify the child view controllers that they have been added to the parent view controller
    tableViewController1.didMove(toParent: self)
    tableViewController2.didMove(toParent: self)
  }
}
