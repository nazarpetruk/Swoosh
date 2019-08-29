//
//  ButtonBorder.swift
//  Swoosh
//
//  Created by Nazar Petruk on 29/08/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import UIKit

class ButtonBorder: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 5
    }
}
