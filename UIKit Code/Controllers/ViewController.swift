import UIKit

final class ViewController: UIViewController {
    
    private let mainView = MainView()
    private var bmiManager = BMICalculatorManager()
    override func loadView() {
        view = mainView
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonTapped()
    }
    
    func buttonTapped() {
        mainView.selectButton.addTarget(self, action: #selector(moveNextView), for: .touchUpInside)
    }
    @objc func moveNextView() {
        let nextView = NextViewController()
        nextView.modalPresentationStyle = .fullScreen
        
        if let height = Double(mainView.heightTextField.text!), let weight = Double(mainView.weightTextField.text!) {
            
            nextView.bmi = bmiManager.returnBMI(weight: weight, height: height)
                        
            mainView.weightTextField.text = ""
            mainView.heightTextField.text = ""
            
            present(nextView, animated: true)
        }
        
    }
}
