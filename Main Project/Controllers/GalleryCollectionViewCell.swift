//
//  GalleryCollectionViewCell.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-21.
//

import UIKit

let addToCartButton: UIButton = {
    let button = UIButton()
    return button
}()

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
        
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var addToCartButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let smallDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .gray
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let likeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "like")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    
    let costLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    @objc func butt() {
        print("123")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImageView)
        addSubview(nameLabel)
        addSubview(smallDescriptionLabel)
        addSubview(likeImageView)
        addSubview(costLabel)
        addSubview(addToCartButton)

        backgroundColor = .white
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor,constant: 40).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3).isActive = true
        
        addToCartButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        addToCartButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        addToCartButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        addToCartButton.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 12).isActive = true
        
        smallDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        smallDescriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        smallDescriptionLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10).isActive = true
        
        likeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        likeImageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 70).isActive = true
        likeImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        costLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costLabel.centerYAnchor.constraint(equalTo: likeImageView.centerYAnchor).isActive = true
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
