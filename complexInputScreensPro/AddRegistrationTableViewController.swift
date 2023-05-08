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
  let checkInLabelCell = DateLabelTableViewCell()
  let checkInDatePickerCell = DatePickerTableViewCell()
  let checkOutLabelCell = DateLabelTableViewCell()
  let checkOutDatePickerCell = DatePickerTableViewCell()
  
  private let firstNameCellIndexPath = IndexPath(row: 1, section: 0)
  private let LastNameCellIndexPath = IndexPath(row: 2, section: 0)
  private let emailCellIndexPath = IndexPath(row: 3, section: 0)
  
  
  private let checkInLabelCellIndexPath = IndexPath(row: 4, section: 0)
  private let checkInDatePickerCellIndexPath = IndexPath(row: 5, section: 0)
  private let checkOutLabelCellIndexPath = IndexPath(row: 5, section: 0)
  private let checkOutDatePickerCellIndexPath = IndexPath(row: 6, section: 0)
  
  
  var isCheckInDatePickerVisible: Bool = false {
    didSet {
      checkInDatePickerCell.datePicker.isHidden = !isCheckInDatePickerVisible
    }
  }
  
  var isCheckOutDatePickerVisible: Bool = false {
    didSet {
      checkOutDatePickerCell.datePicker.isHidden = !isCheckOutDatePickerVisible
    }
  }
  
  private var dateFormatter: DateFormatter = {
    let df = DateFormatter()
    df.timeStyle = .short
    df.dateStyle = .medium
    return df
  }()
  
  
  
  
  
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
    
    tableView.register(TextFielTableViewCell.self, forCellReuseIdentifier: "customCell")
    
    checkInDatePickerCell.datePicker.addTarget(self, action: #selector(dateValueChanged(_:)), for: .valueChanged)
    checkOutDatePickerCell.datePicker.addTarget(self, action: #selector(dateValueChanged(_:)), for: .valueChanged)
    
    checkInDatePickerCell.datePicker.isHidden = true
    checkOutDatePickerCell.datePicker.isHidden = true
    
    let midnightToday = Calendar.current.startOfDay(for: Date()) // midnight
    checkInDatePickerCell.datePicker.date = midnightToday
    updateDatePickers()
  }
  
  @objc func dateValueChanged(_ sender: UIDatePicker) {
    updateDatePickers()
  }
  
  private func updateDatePickers() {
    checkOutDatePickerCell.datePicker.minimumDate = Calendar.current.date(byAdding: .day, value: 1, to: checkInDatePickerCell.datePicker.date)
    checkInLabelCell.detailTextLabel?.text = dateFormatter.string(from: checkInDatePickerCell.datePicker.date)
    checkOutLabelCell.detailTextLabel?.text = dateFormatter.string(from: checkOutDatePickerCell.datePicker.date)
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 9
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }
  
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
      
      
    case checkInLabelCellIndexPath:
      checkInLabelCell.textLabel?.text = "Check-In Date"
      return checkInLabelCell
      
      
    case checkInDatePickerCellIndexPath:
      return checkInDatePickerCell
      
    case checkOutLabelCellIndexPath:
      checkOutLabelCell.textLabel?.text = "Check-Out Date"
      return checkOutLabelCell
      
    case checkOutDatePickerCellIndexPath:
      return checkOutDatePickerCell
      
    default:
      return UITableViewCell()
    }
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    // update the model
    if indexPath == checkInLabelCellIndexPath && !isCheckOutDatePickerVisible {
      isCheckInDatePickerVisible.toggle()
    } else if indexPath == checkOutLabelCellIndexPath && !isCheckInDatePickerVisible {
      isCheckOutDatePickerVisible.toggle()
    } else if indexPath == checkInLabelCellIndexPath || indexPath == checkOutLabelCellIndexPath {
      isCheckInDatePickerVisible.toggle()
      isCheckOutDatePickerVisible.toggle()
    } else {
      return
    }
    // update the views
    tableView.beginUpdates()
    tableView.endUpdates()
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    switch indexPath {
    case checkInDatePickerCellIndexPath where isCheckInDatePickerVisible == false:
      return 0
    case checkOutDatePickerCellIndexPath where isCheckOutDatePickerVisible == false:
      return 0
    default:
      return UITableView.automaticDimension
    }
  }
}



