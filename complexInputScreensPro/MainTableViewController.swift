//
//  MainTableViewController.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-09.
//

import UIKit

class MainTableViewController: UITableViewController {

  let tableViewController1 = AddRegistrationTableViewController()
  let tableViewController2 = DateTableViewController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addChild(tableViewController1)
    addChild(tableViewController2)
    
    view.addSubview(tableViewController1.view)
    view.addSubview(tableViewController2.view)
    
    tableViewController1.didMove(toParent: self)
    tableViewController2.didMove(toParent: self)
  }
}

