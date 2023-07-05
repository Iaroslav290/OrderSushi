//
//  Cart.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-22.
//

import Foundation
import UIKit

var totalQuantity = 0

struct CartItem {
    var name: String
    var price: Int
    var image: UIImage
    var quantity: Int
    
//    static func fillCart() -> [CartItem] {
//        let first = CartItem(name: "Jemberg", price: 8, image: UIImage(named: "sushi1")!)
//        let second = CartItem(name: "Gohna", price: 10, image: UIImage(named: "sushi2")!)
//        
//        return [first, second]
//    }
    
    
}


var cartArray = [CartItem]()



struct ConstantsCart {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing:CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2

}



