//
//  RoomType.swift
//  complexInputScreensPro
//
//  Created by Natasha Machado on 2023-05-08.
//

import Foundation

struct RoomType: Equatable {
  var id: Int
  
  var name: String
  var shortName: String
  var price: Int
  
  //Equatable protocol implementation for RoomType
  static func == (lhs: RoomType, rhs: RoomType) -> Bool {
    return lhs.id == rhs.id
    
  }
  
}
