////
////  WifiTableViewCell.swift
////  complexInputScreensPro
////
////  Created by Natasha Machado on 2023-05-09.
////
//
//import UIKit
//
//class WifiTableViewCell: UITableViewCell {
//  
//  let label1 = UILabel()
//  let label2 = UILabel()
//  let mySwitch = UISwitch()
//  
//  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//    super.init(style: style, reuseIdentifier: reuseIdentifier)
//    
//    // Set up the cell
//    label1.translatesAutoresizingMaskIntoConstraints = false
//    label2.translatesAutoresizingMaskIntoConstraints = false
//    mySwitch.translatesAutoresizingMaskIntoConstraints = false
//    
//    contentView.addSubview(label1)
//    contentView.addSubview(label2)
//    contentView.addSubview(mySwitch)
//    
//    NSLayoutConstraint.activate([
//      label1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//      label1.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//      
//      label2.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: 8),
//      label2.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//      
//      mySwitch.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//      mySwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
//    ])
//  }
//  
//  required init?(coder: NSCoder) {
//    fatalError("init(coder:) has not been implemented")
//  }
//  
//}
//
