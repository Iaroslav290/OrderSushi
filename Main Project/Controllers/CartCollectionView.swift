//
//  CartCollectionView.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-22.
//

import UIKit

class CartCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var items: [CartItem] = []
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = .white
        delegate = self
        dataSource = self
        register(CartCollectionViewCell.self, forCellWithReuseIdentifier: CartCollectionViewCell.reuseId)
        
        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
   }
    
    
    func setCart(cells: [CartItem]) {
        self.items = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CartCollectionViewCell.reuseId, for: indexPath) as! CartCollectionViewCell
        cell.imageCart.image = items[indexPath.row].image
        cell.nameCartLabel.text = items[indexPath.row].name
        cell.priceCartLabel.text = "$\(items[indexPath.row].price)"
        cell.quantityCartLabel.text = "\(items[indexPath.row].quantity)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 400, height: 100)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
