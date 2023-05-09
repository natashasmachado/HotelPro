//
//  AddRegistrationTableViewController.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-08.
//

import UIKit

class AddRegistrationTableViewController: MainTableViewController {
  
  private let firstNameCellIndexPath = IndexPath(row: 0, section: 0)
  private let lastNameCellIndexPath = IndexPath(row: 1, section: 0)
  private let emailCellIndexPath = IndexPath(row: 2, section: 0)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.register(TextFielTableViewCell.self, forCellReuseIdentifier: "customCell")
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath {
    case firstNameCellIndexPath:
      let firstNameCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TextFielTableViewCell
      firstNameCell.textField.placeholder = "First Name"
      return firstNameCell
      
    case lastNameCellIndexPath:
      let lastNameCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TextFielTableViewCell
      lastNameCell.textField.placeholder = "Last Name"
      return lastNameCell
      
    case emailCellIndexPath:
      let emailCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TextFielTableViewCell
      emailCell.textField.placeholder = "Email"
      return emailCell
      
    default:
      fatalError("Unexpected indexPath: \(indexPath)")
    }
  }
}
