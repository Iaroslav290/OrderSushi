//
//  SushiModel.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-21.
//

import Foundation
import UIKit



struct SushiModel {
    var mainImage: UIImage
    var sushiNmae: String
    var smallDescription: String
    var cost: Int
    var button: UIButton
    var addToCartImage: UIImage
    
    
    
    static func fetchSushi() -> [SushiModel] {
        let firstItem = SushiModel(mainImage: UIImage(named: "sushi1")!, sushiNmae: "Jemberg", smallDescription: "Original Japanese Super Light Tuna", cost: 8, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let secondtem = SushiModel(mainImage: UIImage(named: "sushi2")!, sushiNmae: "Gohna", smallDescription: "Tasty France", cost: 10, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let thirdItem = SushiModel(mainImage: UIImage(named: "sushi3")!, sushiNmae: "Folna", smallDescription: "Small Dragon", cost: 9, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let fouthItem = SushiModel(mainImage: UIImage(named: "sushi4")!, sushiNmae: "Hinba", smallDescription: "Blue Moon", cost: 13, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let five = SushiModel(mainImage: UIImage(named: "sushi5")!, sushiNmae: "Maki", smallDescription: "Blue Moon", cost: 11, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let six = SushiModel(mainImage: UIImage(named: "sushi6")!, sushiNmae: "Kohu", smallDescription: "Blue Moon", cost: 14, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let seven = SushiModel(mainImage: UIImage(named: "sushi7")!, sushiNmae: "Arisstan", smallDescription: "Blue Moon", cost: 10, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let eight = SushiModel(mainImage: UIImage(named: "sushi8")!, sushiNmae: "Otimalo", smallDescription: "Blue Moon", cost: 12, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        let nine = SushiModel(mainImage: UIImage(named: "sushi9")!, sushiNmae: "Okunir", smallDescription: "Blue Moon", cost: 15, button: addToCartButton, addToCartImage: UIImage(named: "addToCart")!)
        return [firstItem, secondtem, thirdItem, fouthItem, five, six, seven, eight, nine]
        
    }
}


struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing:CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2

}
