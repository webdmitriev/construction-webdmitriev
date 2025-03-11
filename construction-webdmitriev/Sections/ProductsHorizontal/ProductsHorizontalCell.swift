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
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .appWhite
        
        addSubViews(titleSection)
        
        setupConstraint()
    }
    
    func setupCell(item: CollectionItems) {
        self.titleSection.text = item.title
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            titleSection.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleSection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
            titleSection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -appBuilder.offsetPage)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
