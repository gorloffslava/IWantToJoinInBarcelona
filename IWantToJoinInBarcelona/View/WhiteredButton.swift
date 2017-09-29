//
//  WhiteredButton.swift
//  IWantToJoinInBarcelona
//
//  Created by Вячеслав Горлов on 29.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

class WhiteredButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageView?.image = (self.imageView?.image?.withRenderingMode(.alwaysTemplate))!
        self.imageView?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
