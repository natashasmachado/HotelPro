////
////  WifiTableViewController.swift
////  complexInputScreensPro
////
////  Created by Natasha Machado on 2023-05-09.
////
//
//import UIKit
//
//class WifiTableViewController: MainTableViewController {
//  
//  let cellIdentifier = "Wifi"
//  let data = [("Wifi", "10$ per day")]
//  
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    
//    // Set up the table view
//    tableView.register(WifiTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
//    tableView.tableFooterView = UIView()
//  }
//  
//  // MARK: - Table view data source
//  
//  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return data.count
//  }
//  
//  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! WifiTableViewCell
//    
//    // Configure the cell
//    let (label1Text, label2Text) = data[indexPath.row]
//    cell.label1.text = label1Text
//    cell.label2.text = label2Text
//    
//    return cell
//  }
//  
//  // MARK: - Table view delegate
//  
//  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    // Handle cell selection event, if necessary
//  }
//  
//}
//
