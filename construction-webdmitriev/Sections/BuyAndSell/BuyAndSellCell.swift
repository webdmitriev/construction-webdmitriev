//
//  BuyAndSellCell.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 09.03.2025.
//

import UIKit

class BuyAndSellCell: UICollectionViewCell {
    
    static var reuseID: String = "BuyAndSellCell"
    private lazy var appBuilder = UIBuilder()
    
    private lazy var postTitle: UILabel = appBuilder.addLabel(text: "", fontS: 16, fontW: .bold, color: .appBlack, line: 1)
    private lazy var postDescr: UILabel = appBuilder.addLabel(text: "", fontS: 13, fontW: .regular, color: .appBlack, line: 4)
    
    private lazy var postButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.widthAnchor.constraint(equalToConstant: 12).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        $0.setBackgroundImage(UIImage(systemName: "chevron.right"), for: .normal)
        $0.tintColor = .appBlack

        return $0
    }(UIButton())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .appWhite
        layer.cornerRadius = 10
        layer.masksToBounds = true
        
        addSubViews(postTitle, postDescr, postButton)
        
        setupConstraint()
    }
    
    func setupCell(item: CollectionItems) {
        self.postTitle.text = item.title
        self.postDescr.text = item.descr
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            postTitle.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            postTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            postTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            postDescr.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: 6),
            postDescr.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            postDescr.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            postButton.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            postButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
