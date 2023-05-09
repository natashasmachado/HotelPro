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
  var adultCVC: AdultChildrenTableViewController?
  var wifiVC: WifiTableViewController?
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presentAddRegistrationViewController()
    presentDateViewController()
    presentadultChildrenTableViewController()
  }
  
}


extension ViewController {
  func presentAddRegistrationViewController() {
    addRegistrationVC = AddRegistrationTableViewController()
    guard let addRegistrationVC = addRegistrationVC else { return }
    present(addRegistrationVC, animated: true, completion: nil)
  }
  
  func presentDateViewController() {
    dateVC = DateTableViewController()
    guard let dateVC = dateVC else { return }
    present(dateVC, animated: true, completion: nil)
  }
  
  func presentadultChildrenTableViewController() {
    adultCVC = AdultChildrenTableViewController()
    guard let adultCVC = adultCVC else { return }
    present(adultCVC, animated: true, completion: nil)
  }
  
  
}
