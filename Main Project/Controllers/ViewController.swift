//
//  ViewController.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-20.
//

import UIKit

protocol ViewControllerDelegate {
    func toggleMenu()
}

let redCircleImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFit
    imageView.backgroundColor = .orange
    imageView.layer.cornerRadius = 15
    imageView.isHidden = true
    return imageView
}()

let countCartLabel: UILabel = {
    let label = UILabel()
    label.text = ""
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 20)
    return label
}()

var galleryCollectionView = GalleryCollectionView()

class ViewController: UIViewController {
    

    
    var delegate: ViewControllerDelegate?
    
    
    let openMenuButton = UIButton()
    let imageForMenuButton = UIImage(named: "menu-image")
    let cartButton = UIButton()
    let imageForCart = UIImage(named: "cart")
    
    let sushiLabel: UILabel = {
        let label = UILabel()
        label.text = "Sushi Food"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 35)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        constraints()
        setOpenMenuButtonPosition()
        view.backgroundColor = UIColor.white
        setCounCartLabelPosition()

        setGalleryPosition()
        setSushiLabelPosition()
        setCartButton()
        setCartButtonPosition()
        setRedCirclePosition()
        galleryCollectionView.set(cells: SushiModel.fetchSushi())
        
        
        setOpenSideMenuButton()

        
    }
    
    
    
    func setOpenSideMenuButton() {
        openMenuButton.setImage(imageForMenuButton, for: .normal)
        openMenuButton.addTarget(self, action: #selector(openMenu), for: .touchUpInside)
        
    }
        
    func constraints() {
        [openMenuButton, galleryCollectionView, sushiLabel, cartButton, redCircleImageView, countCartLabel].forEach{
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func setOpenMenuButtonPosition() {
        NSLayoutConstraint.activate([
            openMenuButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 98),
            openMenuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            openMenuButton.widthAnchor.constraint(equalToConstant: 50),
            openMenuButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
   
    func setGalleryPosition() {
        NSLayoutConstraint.activate([
            galleryCollectionView.topAnchor.constraint(equalTo: sushiLabel.bottomAnchor, constant: 10),
            galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            galleryCollectionView.heightAnchor.constraint(equalToConstant: 350)
        ])
        
        
    }
    
    func setSushiLabelPosition() {
        NSLayoutConstraint.activate([
            sushiLabel.topAnchor.constraint(equalTo: openMenuButton.bottomAnchor, constant: 10),
            sushiLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            sushiLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -160),
            sushiLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setCartButton() {
        cartButton.setImage(imageForCart, for: .normal)
        cartButton.addTarget(self, action: #selector(cart), for: .touchUpInside)
    }
    
    func setCartButtonPosition() {
        NSLayoutConstraint.activate([
            cartButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 98),
            cartButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            cartButton.widthAnchor.constraint(equalToConstant: 50),
            cartButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setRedCirclePosition() {
        NSLayoutConstraint.activate([
            redCircleImageView.topAnchor.constraint(equalTo: cartButton.topAnchor, constant: -20),
            redCircleImageView.trailingAnchor.constraint(equalTo: cartButton.trailingAnchor, constant: 15),
            redCircleImageView.widthAnchor.constraint(equalToConstant: 30),
            redCircleImageView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func setCounCartLabelPosition() {
        NSLayoutConstraint.activate([
            countCartLabel.trailingAnchor.constraint(equalTo: redCircleImageView.trailingAnchor),
            countCartLabel.widthAnchor.constraint(equalToConstant: 30),
            countCartLabel.heightAnchor.constraint(equalToConstant: 30),
            countCartLabel.topAnchor.constraint(equalTo: redCircleImageView.topAnchor)
        ])
    }
    
    @objc func openMenu() {
        delegate?.toggleMenu()
    }
    
    @objc func cart() {
        let controller = CartViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
   

}


