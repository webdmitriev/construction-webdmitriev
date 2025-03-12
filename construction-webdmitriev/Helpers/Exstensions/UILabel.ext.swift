//
//  UILabel.ext.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 12.03.2025.
//

import UIKit

class PaddedLabel: UILabel {
    var paddingBottom: CGFloat = 0 {
        didSet { setNeedsDisplay() }
    }

    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: paddingBottom, right: 0)
        super.drawText(in: rect.inset(by: insets))
    }

    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width, height: size.height + paddingBottom)
    }
}
