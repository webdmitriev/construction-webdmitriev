//
//  UIBuilder.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 01.03.2025.
//

import UIKit

final class UIBuilder {
    
    let offsetPage: CGFloat = 16
    let screenSizeW: CGFloat = UIScreen.main.bounds.width
    
    func addLabel(text: String, fontS: CGFloat = 14, fontW: UIFont.Weight = .regular, color: UIColor = .appBlack, line: Int = 1) -> UILabel {
        let txt = UILabel()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.text = text
        txt.font = .systemFont(ofSize: fontS, weight: fontW)
        txt.textColor = color
        txt.numberOfLines = line
        return txt
    }
    
    func addImage(image: String) -> UIImageView {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: image)
        img.contentMode = .scaleAspectFit
        img.layer.masksToBounds = true
        return img
    }
    
    func addBlockViewForStack(bgc: UIColor = .appWhite) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = bgc
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }
    
}
