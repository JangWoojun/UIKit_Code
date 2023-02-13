import UIKit
import AVFoundation

final class ViewController: UIViewController {
    
    private let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.textField.delegate = self
        buttonTapped()
    }
    
    func buttonTapped() {
        mainView.doneButton.addTarget(self, action: #selector(someThing), for: .touchUpInside)
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    @objc func someThing() {
        mainView.textField.resignFirstResponder() // 응답 객체를 사임
    }
    
    // 텍스트 필트 입력을 허락할건지 여부
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 입력을 시작한 시점
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        view.backgroundColor = .black
    }
    
    // 클리어 버튼 허락 여부
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트 필드내에서 내용이 변경될 때마다 호출됨 (허락할 지 여부)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(#function)
        if (textField.text?.count)! + string.count > 10 {
            return false
        } else {
            return true
        }
    }
    
    // 엔터키가 눌러졌을 때 다음동작을 허락할 것인지
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        view.backgroundColor = .opaqueSeparator
        return true
    }
    
    // 텍스트 필드에 입력이 끝날 때 호출되어서 허락 여부를 판단
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트 필드에 입력이 실제 끝났을 때 호출
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        view.backgroundColor = .white
    }
    
    // 다른 곳 터치 시 키보드 종료
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        // textField.resignFirstResponder()
    }
}
