//
//  CartViewController.swift
//  Main Project
//
//  Created by Ярослав Вербило on 2023-05-22.
//

import UIKit

let totalItemsLabel = UILabel()
let totalPriceLabel = UILabel()
let scrollView = UIScrollView()


class CartViewController: UIViewController {
    
    var cartCollectionView = CartCollectionView()
    
    let cartLabel = UILabel()
    
    let itemsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Total: "
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Price: "
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Cart"
        
        
        let customTitleLabel = UILabel()
        customTitleLabel.text = "Cart"
        customTitleLabel.textAlignment = .center
        customTitleLabel.font = UIFont.boldSystemFont(ofSize: 40)
        navigationItem.titleView = customTitleLabel
        
        
        
        
//        let titleAttributes = [
//                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 35.0) // Set the desired font size
//            ]
//
//            // Set the titleTextAttributes property of the navigation bar
//            navigationController?.navigationBar.titleTextAttributes = titleAttributes
//
//        let topSpacing: CGFloat = 23.0
//
//
//            // Set the titleVerticalPositionAdjustment property of the navigation bar
//            navigationController?.navigationBar.setTitleVerticalPositionAdjustment(topSpacing, for: .default)
//
        
//        scrollView.frame = CGRect(x: 0, y: 130, width: view.frame.width, height: view.frame.height)
        view.addSubview(scrollView)
        
        scrollView.addSubview(cartCollectionView)
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height: CGFloat(cartArray.count * 110))
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        
        
        view.backgroundColor = .white
        constraints()
       // setCartLabel()
       // setCartLabelPosition()
        cartCollectionView.setCart(cells: cartArray)
        setPriceLabelPosition()
        setCartPosition()
        setItemsLabelPosition()
        setTotalItemsLabel()
        setTotalItemsLabelPosition()
        setTotalPriceLabel()
        setTotalPriceLabelPosition()
        
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo:  priceLabel.bottomAnchor, constant: 15),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.widthAnchor.constraint(equalToConstant: view.frame.width),
            //scrollView.heightAnchor.constraint(equalToConstant: view.frame.height),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])

    }
    
    func setTotalItemsLabel() {
        totalItemsLabel.text = "\(totalItemCount)"
        totalItemsLabel.font = UIFont.boldSystemFont(ofSize: 35)
        itemsLabel.textAlignment = .center
    }
    
    func setTotalPriceLabel() {
        totalPriceLabel.text = "\(sumOfPrices)"
        //totalPriceLabel.text = "\(cartArray.reduce(0, { $0 + $1.quantity * $1.price }))"
        totalPriceLabel.font = UIFont.boldSystemFont(ofSize: 35)
        totalPriceLabel.textAlignment = .center
    }
    
    func constraints() {
        [cartLabel, itemsLabel, totalItemsLabel, totalPriceLabel, priceLabel].forEach{
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
//    func setCartLabel() {
//        cartLabel.text = "Cart"
//        cartLabel.textAlignment = .left
//        cartLabel.font = UIFont.boldSystemFont(ofSize: 35)
//        cartLabel.textColor = .black
//    }
    
//    func setCartLabelPosition() {
//        NSLayoutConstraint.activate([
//            cartLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            cartLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -160),
//            cartLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
//            cartLabel.heightAnchor.constraint(equalToConstant: 40)
//
//        ])
//    }
    
    func setTotalItemsLabelPosition() {
        NSLayoutConstraint.activate([
            totalItemsLabel.leadingAnchor.constraint(equalTo: itemsLabel.trailingAnchor),
            totalItemsLabel.topAnchor.constraint(equalTo: itemsLabel.topAnchor),
            
        ])
    }
    
    func setItemsLabelPosition() {
        NSLayoutConstraint.activate([
            itemsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            itemsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
        ])
    }
    
    func setTotalPriceLabelPosition() {
        NSLayoutConstraint.activate([
            totalPriceLabel.topAnchor.constraint(equalTo: priceLabel.topAnchor),
            totalPriceLabel.leadingAnchor.constraint(equalTo: priceLabel.trailingAnchor)
        ])
    }
    
    func setPriceLabelPosition() {
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: itemsLabel.bottomAnchor, constant: 10),
            priceLabel.leadingAnchor.constraint(equalTo: itemsLabel.leadingAnchor)
        ])
    }
    
    func setCartPosition() {
        cartCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cartCollectionView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            cartCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cartCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            cartCollectionView.heightAnchor.constraint(equalToConstant: CGFloat(cartArray.count * 110))
        ])
        
        
    }
    

    

}
