//
//  UIView2.swift
//  UIKit Code
//
//  Created by Jangwoojun on 2023/02/15.
//

import UIKit

class UIView2: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
