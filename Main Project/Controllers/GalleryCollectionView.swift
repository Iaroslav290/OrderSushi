//
//  GalleryCollectionView.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-21.
//

import UIKit

var sumOfPrices: Int = cartArray.reduce(0, { $0 + $1.quantity * $1.price })
var totalItemCount: Int = 0

class GalleryCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [SushiModel]()
    
   

     init() {
         let layout = UICollectionViewFlowLayout()
         layout.scrollDirection = .horizontal
         super.init(frame: .zero, collectionViewLayout: layout)
         
         backgroundColor = .white
         delegate = self
         dataSource = self
         register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.reuseId)
         
         layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
         contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
         
         showsHorizontalScrollIndicator = false
         showsVerticalScrollIndicator = false
    }
    
    func set(cells: [SushiModel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.reuseId, for: indexPath) as! GalleryCollectionViewCell
        cell.mainImageView.image = cells[indexPath.row].mainImage
        cell.nameLabel.text = cells[indexPath.row].sushiNmae
        cell.smallDescriptionLabel.text = cells[indexPath.row].smallDescription
        cell.costLabel.text = "$\(cells[indexPath.row].cost)"
        cell.addToCartButton.setImage(cells[indexPath.row].addToCartImage, for: .normal)
        cell.addToCartButton.addTarget(self, action: #selector(addToCartAction(_: )), for: .touchUpInside)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.galleryItemWidth, height: frame.height * 0.8)
    }
    
    
    
    @objc func addToCartAction(_ sender: UIButton) {
        guard let indexPath = self.indexPath(for: sender.superview as! UICollectionViewCell) else {
                return
            }

        
        let cell = cellForItem(at: indexPath) as? GalleryCollectionViewCell
            
            // Update the image of the addToCartButton in the cell
        
        sumOfPrices += cells[indexPath.row].cost
        
        
        if cartArray.contains(where: { $0.name == cells[indexPath.row].sushiNmae }) {
            
            if let index = cartArray.firstIndex(where: { $0.name == cells[indexPath.row].sushiNmae }) {
                cartArray[index].quantity += 1
            }
            } else {
                cartArray.append(CartItem(name: "\(cells[indexPath.row].sushiNmae)", price: (cells[indexPath.row].cost), image: (cells[indexPath.row].mainImage), quantity: 1))
            }
        
        redCircleImageView.isHidden = false
        
        
        totalItemCount = cartArray.reduce(0, { $0 + $1.quantity })
            print("Загальна кількість елементів в cartArray: \(totalItemCount)")
        
        countCartLabel.text = "\(totalItemCount)"       
        
        var updatedSushiModel = cells[indexPath.row]
        updatedSushiModel.addToCartImage = UIImage(named: "addedToCart")!
        updatedSushiModel.button.isEnabled = false
        cells[indexPath.row] = updatedSushiModel

        galleryCollectionView.reloadItems(at: [indexPath])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
