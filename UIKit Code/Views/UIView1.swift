//
//  UIView1.swift
//  UIKit Code
//
//  Created by Jangwoojun on 2023/02/15.
//

import UIKit

class UIView1: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
