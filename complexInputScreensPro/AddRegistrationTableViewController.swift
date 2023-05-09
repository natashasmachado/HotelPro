//
//  AddRegistrationTableViewController.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-08.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {

  let fistnameCell = TextFielTableViewCell()
  let lastnameCell = TextFielTableViewCell()
  let emailCell = TextFielTableViewCell()
  
  
  private let firstNameCellIndexPath = IndexPath(row: 0, section: 0)
  private let LastNameCellIndexPath = IndexPath(row: 1, section: 0)
  private let emailCellIndexPath = IndexPath(row: 2, section: 0)
  
  //  @IBOutlet var firstNameTextField: UITextField!
  //  @IBOutlet var lastNameTextField: UITextField!
  //  @IBOutlet var emailTextField: UITextField!
  //  @IBOutlet var checkInDateLabel: UILabel!
  //  @IBOutlet var checkInDatePicker: UIDatePicker!
  //  @IBOutlet var checkOutDateLabel: UILabel!
  //  @IBOutlet var checkOutDatePicker: UIDatePicker!
  //
  
  //  @IBAction func doneBarButtonTapped(_ sender: UIBarButtonItem) {
  //    let firstName = firstNameTextField.text ?? ""
  //    let lastName = lastNameTextField.text ?? ""
  //    let email = emailTextField.text ?? ""
  //    print("DONE TAPPED")
  //    print("firstName: \(firstName)")
  //    print("lastName: \(lastName)")
  //    print("email: \(email)")
  //  }
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      switch indexPath {
        
      case firstNameCellIndexPath:
        let fNameCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TextFielTableViewCell
        fNameCell.textField.placeholder = "First Name"
        return fNameCell
        
      case LastNameCellIndexPath:
        let lNameCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TextFielTableViewCell
        lNameCell.textField.placeholder = "Last Name"
        return lNameCell
        
      case emailCellIndexPath:
        let emailCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TextFielTableViewCell
        emailCell.textField.placeholder = "Email"
        return emailCell
        
      default:
        return UITableViewCell()
        
      }
    }
  }
}



