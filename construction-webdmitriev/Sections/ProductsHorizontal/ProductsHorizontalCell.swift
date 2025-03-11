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
    
    private lazy var titleSection: UILabel = appBuilder.addLabel(text: ".", fontS: 24, fontW: .bold,
                                                                 color: .appBlack, line: 2)
    
    private lazy var productScrollView: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.heightAnchor.constraint(equalToConstant: 194).isActive = true
        $0.showsHorizontalScrollIndicator = false
        $0.isPagingEnabled = true
        $0.backgroundColor = .gray
        return $0
    }(UIScrollView())
    
    private lazy var productContentView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .gray
        return $0
    }(UIView())

    private lazy var productView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .appBg
//        $0.addSubViews(productTitle, productPrice, productAdderss)
        return $0
    }(UIView())
    
    private lazy var productView2: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .appGreen
//        $0.addSubViews(productTitle, productPrice, productAdderss)
        return $0
    }(UIView())

    private lazy var productTitle: UILabel = appBuilder.addLabel(text: "Title", fontS: 16, fontW: .bold, color: .red)
    private lazy var productPrice: UILabel = appBuilder.addLabel(text: "Price", fontS: 14, fontW: .medium, color: .appWhite)
    private lazy var productAdderss: UILabel = appBuilder.addLabel(text: "Adderss", fontS: 14, fontW: .regular, color: .appWhite)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .appWhite
        
        addSubViews(titleSection, productScrollView)
        productScrollView.addSubview(productContentView)
        
        productContentView.addSubViews(productView, productView2)
        
        setupConstraint()
    }
    
    func setupCell(item: CollectionItems) {
        self.titleSection.text = item.title
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            titleSection.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleSection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
            titleSection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -appBuilder.offsetPage),
            
            productScrollView.topAnchor.constraint(equalTo: titleSection.bottomAnchor, constant: 8),
            productScrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
            productScrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -appBuilder.offsetPage),
            
            productContentView.topAnchor.constraint(equalTo: productScrollView.topAnchor, constant: 0),
            productContentView.leadingAnchor.constraint(equalTo: productScrollView.leadingAnchor, constant: 0),
            productContentView.trailingAnchor.constraint(equalTo: productScrollView.trailingAnchor, constant: 0),
            productContentView.bottomAnchor.constraint(equalTo: productScrollView.bottomAnchor, constant: 0),
            productContentView.heightAnchor.constraint(equalTo: productScrollView.heightAnchor),
            
            productView.topAnchor.constraint(equalTo: productContentView.topAnchor),
            productView.leadingAnchor.constraint(equalTo: productContentView.leadingAnchor),
            productView.widthAnchor.constraint(equalTo: productScrollView.widthAnchor),
            productView.heightAnchor.constraint(equalTo: productScrollView.heightAnchor),
            
            productView2.topAnchor.constraint(equalTo: productContentView.topAnchor),
            productView2.leadingAnchor.constraint(equalTo: productView.trailingAnchor),
            productView2.widthAnchor.constraint(equalTo: productScrollView.widthAnchor),
            productView2.heightAnchor.constraint(equalTo: productScrollView.heightAnchor),

//            productTitle.topAnchor.constraint(equalTo: titleSection.bottomAnchor, constant: 8),
//            productTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
//            productTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
//
//            productPrice.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 8),
//            productPrice.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
//            productPrice.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
//
//            productAdderss.topAnchor.constraint(equalTo: productPrice.bottomAnchor, constant: 8),
//            productAdderss.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
//            productAdderss.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
//            productStack.bottomAnchor.constraint(equalTo: productAdderss.bottomAnchor, constant: 0),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
