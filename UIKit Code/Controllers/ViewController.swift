import UIKit

class ViewController: UIViewController {

    private let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectButton()
    }

    func selectButton() {
        mainView.selectButton.addTarget(self, action: #selector(changeUI), for: .touchUpInside)
    }
    
    @objc func changeUI() {
        if mainView.backgroundColor == .white {
            mainView.backgroundColor = .black
            mainView.textLabel.text = "반갑습니다"
            mainView.textLabel.textColor = .white
            mainView.selectButton.backgroundColor = .white
            mainView.selectButton.setTitleColor(.black, for: .normal)
        } else {
            mainView.backgroundColor = .white
            mainView.textLabel.text = "안녕하세요"
            mainView.textLabel.textColor = .black
            mainView.selectButton.backgroundColor = .black
            mainView.selectButton.setTitleColor(.white, for: .normal)
        }
    }

}

