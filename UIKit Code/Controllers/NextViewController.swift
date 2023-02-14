//
//  NextViewController.swift
//  UIKit Code
//
//  Created by Jangwoojun on 2023/02/14.
//

import UIKit

class NextViewController: UIViewController {

    private let nextView = NextView()
    var bmi: BMI?

    override func loadView() {
        view = nextView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonTapped()
        nextView.bmiLabel.text = String(format: "%.1f", bmi!.bmi)
        nextView.bmiTextLabel.text = bmi?.bmiText
        
        nextView.bmiLabel.layer.cornerRadius = 8
        nextView.bmiLabel.clipsToBounds = true
        
        nextView.reButton.clipsToBounds = true
        nextView.reButton.layer.cornerRadius = 10
        
        nextView.bmiLabel.backgroundColor = bmi?.color
    }
    
    func buttonTapped() {
        nextView.reButton.addTarget(self, action: #selector(moveNextView), for: .touchUpInside)
    }
    
    @objc func moveNextView() {
        dismiss(animated: true)
    }

}
