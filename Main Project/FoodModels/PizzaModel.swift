//
//  PizzaModel.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-06-01.
//

import Foundation
import UIKit



struct PizzaModel {
    var mainImage: UIImage
    var sushiNmae: String
    var smallDescription: String
    var cost: Int
    var button: UIButton
    var addToCartImage: UIImage
    
    
    
    static func fetchSushi() -> [PizzaModel] {
        let firstItem = PizzaModel(mainImage: UIImage(named: "pizza1")!, sushiNmae: "Paperoni", smallDescription: "Original Japanese Super Light Tuna", cost: 8, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let secondtem = PizzaModel(mainImage: UIImage(named: "pizza2")!, sushiNmae: "Gohna", smallDescription: "Tasty France", cost: 10, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let thirdItem = PizzaModel(mainImage: UIImage(named: "pizza3")!, sushiNmae: "Folna", smallDescription: "Small Dragon", cost: 9, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let fouthItem = PizzaModel(mainImage: UIImage(named: "sushi4")!, sushiNmae: "Hinba", smallDescription: "Blue Moon", cost: 13, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let five = PizzaModel(mainImage: UIImage(named: "sushi5")!, sushiNmae: "Maki", smallDescription: "Blue Moon", cost: 11, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let six = PizzaModel(mainImage: UIImage(named: "sushi6")!, sushiNmae: "Kohu", smallDescription: "Blue Moon", cost: 14, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let seven = PizzaModel(mainImage: UIImage(named: "sushi7")!, sushiNmae: "Arisstan", smallDescription: "Blue Moon", cost: 10, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let eight = PizzaModel(mainImage: UIImage(named: "sushi8")!, sushiNmae: "Otimalo", smallDescription: "Blue Moon", cost: 12, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let nine = PizzaModel(mainImage: UIImage(named: "sushi9")!, sushiNmae: "Okunir", smallDescription: "Blue Moon", cost: 15, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        return [firstItem, secondtem, thirdItem, fouthItem, five, six, seven, eight, nine]
        
    }
}
