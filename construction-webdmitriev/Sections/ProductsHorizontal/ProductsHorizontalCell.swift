//
//  ProductsHorizontalCell.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 11.03.2025.
//

import UIKit

class ProductsHorizontalCell: UICollectionViewCell {
    
    static let reuseID: String = "ProductsHorizontalCell"
    private lazy var appBuilder = UIBuilder()

    private lazy var productTitle: UILabel = appBuilder.addLabel(text: "Title", fontS: 16, fontW: .bold, color: .red)
    private lazy var productPrice: UILabel = appBuilder.addLabel(text: "Price", fontS: 14, fontW: .medium, color: .appWhite)
    private lazy var productAdderss: UILabel = appBuilder.addLabel(text: "Adderss", fontS: 14, fontW: .regular, color: .appWhite)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .appWhite
        
        addSubViews(productTitle, productPrice, productAdderss)
        
        setupConstraint()
    }
    
    func setupCell(item: CollectionItems) {
//        self.productTitle.text = item.title
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([

            productTitle.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            productTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            productTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),

            productPrice.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 8),
            productPrice.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            productPrice.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),

            productAdderss.topAnchor.constraint(equalTo: productPrice.bottomAnchor, constant: 8),
            productAdderss.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            productAdderss.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
