//
//  LogotypeCell.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 06.03.2025.
//

import UIKit

class LogotypeCell: UICollectionViewCell, CellProtocol {

    static var reuseID: String = "LogotypeCell"
    private lazy var appBuilder = UIBuilder()
    
    private lazy var logotype: UIImageView = appBuilder.addImage(image: "logotype-white")
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(logotype)
        
        setupConstraint()
    }
    
    func setupCell() {
        self.logotype.image = UIImage(named: "logotype-white")
        self.logotype.widthAnchor.constraint(equalToConstant: 134).isActive = true
        self.logotype.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            logotype.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            logotype.leadingAnchor.constraint(equalTo: leadingAnchor, constant: appBuilder.offsetPage),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
