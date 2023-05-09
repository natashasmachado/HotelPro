////
////  AdultChildrenTableViewController.swift
////  complexInputScreensPro
////
////  Created by Natasha Machado on 2023-05-09.
////
//
//import UIKit
//
//class AdultChildrenTableViewController: UITableViewController {
//  
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    
//    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
//    tableView.dataSource = self
//    tableView.delegate = self
//  }
//  
//  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return 2
//  }
//  
//  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//    
//    let label1 = UILabel(frame: CGRect(x: 10, y: 10, width: 150, height: 30))
//    label1.text = "Adults \(indexPath.row + 1)"
//    cell.contentView.addSubview(label1)
//    
//    let stepper1 = UIStepper(frame: CGRect(x: 200, y: 5, width: 100, height: 30))
//    stepper1.tag = indexPath.row
//    stepper1.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
//    cell.contentView.addSubview(stepper1)
//    
//    let label2 = UILabel(frame: CGRect(x: 10, y: 10, width: 150, height: 30))
//    label2.text = "Children \(indexPath.row + 1)"
//    cell.contentView.addSubview(label2)
//    
//    let stepper2 = UIStepper(frame: CGRect(x: 200, y: 5, width: 100, height: 30))
//    stepper2.tag = indexPath.row
//    stepper2.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
//    cell.contentView.addSubview(stepper2)
//    
//    return cell
//  }
//  
//  @objc func stepperValueChanged(_ sender: UIStepper) {
//    print("Stepper \(sender.tag + 1) value changed: \(sender.value)")
//  }
//}
