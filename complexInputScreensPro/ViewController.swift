//
//  ViewController.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-08.
//

import UIKit

class ViewController: UIViewController {
  
  
  var addRegistrationVC: AddRegistrationTableViewController?
  var dateVC: DateTableViewController?
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presentAddRegistrationViewController()
    presentDateViewController()
  }
  
}


extension ViewController {
  func presentAddRegistrationViewController() {
    addRegistrationVC = AddRegistrationTableViewController()
    guard let addRegistrationVC = addRegistrationVC else { return }
    // Set any necessary properties on addRegistrationVC here
    present(addRegistrationVC, animated: true, completion: nil)
  }
  
  func presentDateViewController() {
    dateVC = DateTableViewController()
    guard let dateVC = dateVC else { return }
    // Set any necessary properties on dateVC here
    present(dateVC, animated: true, completion: nil)
  }
}
