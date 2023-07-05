//
//  CartCollectionViewCell.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-22.
//

import UIKit

class CartCollectionViewCell: UICollectionViewCell {
    static let reuseId = "GalleryCollectionViewCell"
    
    let imageCart: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let nameCartLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceCartLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let trashImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "trash")
        return imageView
    }()
    
    let quantityCartLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageCart)
        addSubview(nameCartLabel)
        addSubview(priceCartLabel)
        addSubview(trashImageView)
        addSubview(quantityCartLabel)

        backgroundColor = .white
        imageCart.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 15).isActive = true
        imageCart.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        imageCart.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imageCart.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        nameCartLabel.leadingAnchor.constraint(equalTo: imageCart.trailingAnchor, constant: 30).isActive = true
        nameCartLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        priceCartLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -55).isActive = true
        priceCartLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        trashImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        trashImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        trashImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        trashImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        quantityCartLabel.trailingAnchor.constraint(equalTo: trashImageView.leadingAnchor, constant: -70).isActive = true
        quantityCartLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 8)
        
        self.clipsToBounds = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
