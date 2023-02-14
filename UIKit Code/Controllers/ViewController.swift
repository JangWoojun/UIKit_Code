import UIKit

final class ViewController: UIViewController {
    
    private let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.idTextField.delegate = self
        mainView.passwordTextField.delegate = self
        buttonTapped()
    }
    
    func buttonTapped() {
        mainView.rePasswordButton.addTarget(self, action: #selector(doAlert), for: .touchUpInside)
        mainView.passwordButton.addTarget(self, action: #selector(passwordButtonTapped), for: .touchUpInside)
        mainView.idTextField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        mainView.passwordTextField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
    }
    
    @objc func doAlert() {
        let ar = UIAlertController(title: "비밀번호 바꾸기", message: "비밀번호를 바꾸시겠습니까?", preferredStyle: .alert)
        let success = UIAlertAction(title: "확인", style: .default)
        let cancel = UIAlertAction(title: "취소", style: .default)
        
        ar.addAction(success)
        ar.addAction(cancel)
        
        present(ar, animated: true)
    }
    
    @objc func passwordButtonTapped() {
        mainView.passwordTextField.isSecureTextEntry.toggle()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == mainView.idTextField {
            mainView.idInputView.backgroundColor = #colorLiteral(red: 0.2972877622, green: 0.2973434925, blue: 0.297280401, alpha: 1)
            mainView.idLabel.font = UIFont.systemFont(ofSize: 11)
            mainView.emailInfoLabelCenterYConstraint.constant = -13
        }
        
        if textField == mainView.passwordTextField {
            mainView.passwordInputView.backgroundColor = #colorLiteral(red: 0.2972877622, green: 0.2973434925, blue: 0.297280401, alpha: 1)
            mainView.passwordLabel.font = UIFont.systemFont(ofSize: 11)
            mainView.passwordInfoLabelCenterYConstraint.constant = -13
        }
        
        UIView.animate(withDuration: 0.3) {
            self.mainView.stackView.layoutIfNeeded()
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == mainView.idTextField {
            
            mainView.idInputView.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
            
            if mainView.idTextField.text == "" {
                mainView.idLabel.font = UIFont.systemFont(ofSize: 18)
                mainView.emailInfoLabelCenterYConstraint.constant = 0
            }
        }
        if textField == mainView.passwordTextField {
            
            mainView.passwordInputView.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
            
            if mainView.passwordTextField.text == "" {
                mainView.passwordLabel.font = UIFont.systemFont(ofSize: 18)
                mainView.passwordInfoLabelCenterYConstraint.constant = 0
            }
        }
        
        UIView.animate(withDuration: 0.3) {
            self.mainView.stackView.layoutIfNeeded()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc private func textFieldEditingChanged(_ textField: UITextField) {
        if textField.text?.count == 1 {
            if textField.text?.first == " " {
                textField.text = ""
                return
            }
        }
        guard
            let email = mainView.idTextField.text, !email.isEmpty,
            let password = mainView.passwordTextField.text, !password.isEmpty
        else {
            mainView.loginButton.backgroundColor = .clear
            mainView.loginButton.isEnabled = false
            return
        }
        mainView.loginButton.backgroundColor = .red
        mainView.loginButton.isEnabled = true
    }
}
