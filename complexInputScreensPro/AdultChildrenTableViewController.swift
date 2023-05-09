//
//  AdultChildrenTableViewController.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-09.
//

import UIKit

class AdultChildrenTableViewController: UITableViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
    
    let label = UILabel(frame: CGRect(x: 20, y: 10, width: 200, height: 30))
    label.text = "Adult \(indexPath.row + 1)"
    cell.contentView.addSubview(label)
    
    let stepper1 = UIStepper(frame: CGRect(x: 220, y: 5, width: 100, height: 30))
    cell.contentView.addSubview(stepper1)
    
    return cell
  }
}
