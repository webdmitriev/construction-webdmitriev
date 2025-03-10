//
//  TitleForBlocksCell.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 10.03.2025.
//

import UIKit

class TitleForBlocksCell: UICollectionViewCell {
    
    static let reuseID: String = "TitleForBlocksCell"
    private lazy var appBuilder = UIBuilder()
    
    private lazy var titleBlock: UILabel = appBuilder.addLabel(text: ".", fontS: 25, fontW: .bold, color: .black)
    
    private lazy var blockStackOne: UIView = appBuilder.addBlockViewForStack(bgc: .appBlockOne)
    private lazy var blockStackOneTitle: UILabel = appBuilder.addLabel(text: ".", fontS: 14, fontW: .bold,
                                                                       color: .black, line: 2)
    private lazy var blockStackOneDescr: UILabel = appBuilder.addLabel(text: ".", fontS: 14, fontW: .regular,
                                                                       color: .black, line: 3)
    
    private lazy var blockStackTwo: UIView = appBuilder.addBlockViewForStack(bgc: .appBlockTwo)
    private lazy var blockStackTwoTitle: UILabel = appBuilder.addLabel(text: ".", fontS: 14, fontW: .bold,
                                                                       color: .black, line: 2)
    private lazy var blockStackTwoDescr: UILabel = appBuilder.addLabel(text: ".", fontS: 14, fontW: .regular,
                                                                       color: .black, line: 3)
    
    private lazy var blockStackThree: UIView = appBuilder.addBlockViewForStack(bgc: .appBlockThree)
    private lazy var blockStackThreeTitle: UILabel = appBuilder.addLabel(text: ".", fontS: 14, fontW: .bold,
                                                                         color: .black, line: 2)
    private lazy var blockStackThreeDescr: UILabel = appBuilder.addLabel(text: ".", fontS: 14, fontW: .regular,
                                                                         color: .black, line: 3)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .appWhite
        roundCorners([.topLeft, .topRight], radius: 14)
        clipsToBounds = true
        
        addSubViews(titleBlock, blockStackOne, blockStackTwo, blockStackThree)
        self.blockStackOne.addSubViews(blockStackOneTitle, blockStackOneDescr)
        self.blockStackTwo.addSubViews(blockStackTwoTitle, blockStackTwoDescr)
        self.blockStackThree.addSubViews(blockStackThreeTitle, blockStackThreeDescr)
        
        setupConstraint()
    }
    
    func setupCell(item: CollectionItems) {
        self.titleBlock.text = item.title
        
        if ((item.blockStackOneTitle?.isEmpty) != nil) || ((item.blockStackOneDescr?.isEmpty) != nil) {
            self.blockStackOneTitle.text = item.blockStackOneTitle ?? ""
            self.blockStackOneDescr.text = item.blockStackOneDescr ?? ""
        }
        
        if ((item.blockStackOneTitle?.isEmpty) != nil) || ((item.blockStackOneDescr?.isEmpty) != nil) {
            self.blockStackTwoTitle.text = item.blockStackTwoTitle ?? ""
            self.blockStackTwoDescr.text = item.blockStackTwoDescr ?? ""
        }
        
        if ((item.blockStackOneTitle?.isEmpty) != nil) && ((item.blockStackOneDescr?.isEmpty) != nil) {
            self.blockStackThreeTitle.text = item.blockStackThreeTitle ?? ""
            self.blockStackThreeDescr.text = item.blockStackThreeDescr ?? ""
        }
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            titleBlock.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            titleBlock.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
            titleBlock.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -appBuilder.offsetPage),
            
            // MARK: blockStackOne
            blockStackOne.topAnchor.constraint(equalTo: titleBlock.bottomAnchor, constant: 14),
            blockStackOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
            blockStackOne.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -appBuilder.offsetPage),
            blockStackOne.heightAnchor.constraint(greaterThanOrEqualToConstant: 110),
            
            blockStackOneTitle.topAnchor.constraint(equalTo: blockStackOne.topAnchor, constant: 16),
            blockStackOneTitle.leadingAnchor.constraint(equalTo: blockStackOne.leadingAnchor, constant: 12),
            blockStackOneTitle.trailingAnchor.constraint(equalTo: blockStackOne.trailingAnchor, constant: -12),
            
            blockStackOneDescr.topAnchor.constraint(equalTo: blockStackOneTitle.bottomAnchor, constant: 4),
            blockStackOneDescr.leadingAnchor.constraint(equalTo: blockStackOne.leadingAnchor, constant: 12),
            blockStackOneDescr.trailingAnchor.constraint(equalTo: blockStackOne.trailingAnchor, constant: -12),
            
            // MARK: blockStackTwo
            blockStackTwo.topAnchor.constraint(equalTo: blockStackOne.bottomAnchor, constant: 14),
            blockStackTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
            blockStackTwo.widthAnchor.constraint(equalToConstant: appBuilder.screenSizeW / 2 - appBuilder.offsetPage * 1.4),
            blockStackTwo.heightAnchor.constraint(equalToConstant: 110),
            
            blockStackTwoTitle.topAnchor.constraint(equalTo: blockStackTwo.topAnchor, constant: 16),
            blockStackTwoTitle.leadingAnchor.constraint(equalTo: blockStackTwo.leadingAnchor, constant: 12),
            blockStackTwoTitle.trailingAnchor.constraint(equalTo: blockStackTwo.trailingAnchor, constant: -12),
            
            blockStackTwoDescr.topAnchor.constraint(equalTo: blockStackTwoTitle.bottomAnchor, constant: 4),
            blockStackTwoDescr.leadingAnchor.constraint(equalTo: blockStackTwo.leadingAnchor, constant: 12),
            blockStackTwoDescr.trailingAnchor.constraint(equalTo: blockStackTwo.trailingAnchor, constant: -12),
            
            // MARK: blockStackThree
            blockStackThree.topAnchor.constraint(equalTo: blockStackOne.bottomAnchor, constant: 14),
            blockStackThree.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -appBuilder.offsetPage),
            blockStackThree.widthAnchor.constraint(equalToConstant: appBuilder.screenSizeW / 2 - appBuilder.offsetPage * 1.4),
            blockStackThree.heightAnchor.constraint(equalToConstant: 110),
            
            blockStackThreeTitle.topAnchor.constraint(equalTo: blockStackThree.topAnchor, constant: 16),
            blockStackThreeTitle.leadingAnchor.constraint(equalTo: blockStackThree.leadingAnchor, constant: 12),
            blockStackThreeTitle.trailingAnchor.constraint(equalTo: blockStackThree.trailingAnchor, constant: -12),
            
            blockStackThreeDescr.topAnchor.constraint(equalTo: blockStackThreeTitle.bottomAnchor, constant: 4),
            blockStackThreeDescr.leadingAnchor.constraint(equalTo: blockStackThree.leadingAnchor, constant: 12),
            blockStackThreeDescr.trailingAnchor.constraint(equalTo: blockStackThree.trailingAnchor, constant: -12),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
