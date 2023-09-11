//
//  EcommerceElement.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 29/07/2023.
//

import Foundation


struct EcommerceElement: Codable {
    var id: Int?
    var title: String?
    var price: Double?
    var description: String?
    var category: String?
    var image: String?
    /*
     struct ShoppingModel: Codable {
         var id: Int?
         var title: String?
         var price: Double?
         var description: String?
         var category: String?
         var image: String?
     }


     */
    
    
}

enum Category: String {
    case electronics
    case jewelery
    case menSClothing
    case womenSClothing
}

// MARK: - Rating
struct Rating {
    let rate: Double
    let count: Int
}
