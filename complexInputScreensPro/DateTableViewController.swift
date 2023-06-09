//
//  DateTableViewController.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-08.
//

import UIKit

class DateTableViewController: MainTableViewController {
  
  let checkInLabelCell = DateLabelTableViewCell()
  let checkInDatePickerCell = DatePickerTableViewCell()
  let checkOutLabelCell = DateLabelTableViewCell()
  let checkOutDatePickerCell = DatePickerTableViewCell()
  
  private let checkInLabelCellIndexPath = IndexPath(row: 0, section: 0)
  private let checkInDatePickerCellIndexPath = IndexPath(row: 1, section: 0)
  private let checkOutLabelCellIndexPath = IndexPath(row: 2, section: 0)
  private let checkOutDatePickerCellIndexPath = IndexPath(row: 3, section: 0)
  
  
  var isCheckInDatePickerVisible: Bool = false {
    didSet {
      checkInDatePickerCell.datePicker.isHidden = !isCheckInDatePickerVisible
      tableView.beginUpdates()
      tableView.endUpdates()
    }
  }
  
  var isCheckOutDatePickerVisible: Bool = false {
    didSet {
      checkOutDatePickerCell.datePicker.isHidden = !isCheckOutDatePickerVisible
      tableView.beginUpdates()
      tableView.endUpdates()
    }
  }
  
  private var dateFormatter: DateFormatter = {
    let df = DateFormatter()
    df.timeStyle = .short
    df.dateStyle = .medium
    return df
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    checkInDatePickerCell.datePicker.addTarget(self, action: #selector(dateValueChanged(_:)), for: .valueChanged)
    checkOutDatePickerCell.datePicker.addTarget(self, action: #selector(dateValueChanged(_:)), for: .valueChanged)
    
    checkInDatePickerCell.datePicker.isHidden = true
    checkOutDatePickerCell.datePicker.isHidden = true
    
    let midnightToday = Calendar.current.startOfDay(for: Date())
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
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
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
  
  // MARK: - Table view data source
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath {
      
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
}
