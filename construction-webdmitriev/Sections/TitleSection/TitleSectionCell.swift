//
//  TitleSectionCell.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 09.03.2025.
//

import UIKit

class TitleSectionCell: UICollectionViewCell {
    
    static let reuseID: String = "TitleSectionCell"
    private lazy var appBuilder = UIBuilder()
    
    private lazy var titleCell: UILabel = appBuilder.addLabel(text: ".", fontS: 24, fontW: .bold, color: .appWhite, line: 2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .clear
        
        addSubview(titleCell)
        
        setupConstraint()
    }
    
    func setupCell(item: CollectionItems) {
        self.titleCell.text = item.title
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            titleCell.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
            titleCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -appBuilder.offsetPage),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
