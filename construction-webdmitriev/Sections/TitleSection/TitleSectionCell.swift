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
    
//    private lazy var titleCell: UILabel = appBuilder.addLabel(text: ".", fontS: 24, fontW: .bold, color: .appWhite, line: 2)
    
    private lazy var titleCell = PaddedLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .clear
        
        self.titleCell.translatesAutoresizingMaskIntoConstraints = false
        self.titleCell.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        self.titleCell.numberOfLines = 2
        self.titleCell.sizeToFit()
        
        addSubview(titleCell)
        
        setupConstraint()
    }
    
    func setupCell(item: CollectionItems) {
        backgroundColor = item.bgc ?? UIColor.clear

        self.titleCell.text = item.title
        self.titleCell.paddingBottom = 40
        self.titleCell.textColor = item.color ?? UIColor.appBlack
        self.titleCell.sizeToFit()
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
