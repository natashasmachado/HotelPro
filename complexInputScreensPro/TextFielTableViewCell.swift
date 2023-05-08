//
//  TextFielTableViewCell.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-08.
//

import UIKit

class TextFielTableViewCell: UITableViewCell {
  
  let textField = UITextField()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    textField.borderStyle = .roundedRect
    contentView.addSubview(textField)
    
    
    textField.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      textField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
      textField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
      textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
      textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
    ])
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
