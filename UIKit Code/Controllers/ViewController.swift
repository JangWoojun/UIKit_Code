import UIKit

class ViewController: UIViewController {

    private let mainView = MainView()
    private let upDownmanager = UPDownManager()
    
    var chk = 0
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonTapped()
    }

    func buttonTapped() {
        mainView.selectButton.addTarget(self, action: #selector(someThing), for: .touchUpInside)
        mainView.button1.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button2.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button3.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button4.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button5.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button6.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button7.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button8.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button9.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.button10.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(Something), for: .touchUpInside)
    }
    
    @objc func someThing() {
        let chkText = upDownmanager.chkCount(chk: chk)
        mainView.countLabel.text = String(chk)
        mainView.selectLabel.text = chkText
    }
    
    @objc func something(a: UIButton) {
        chk = Int((a.titleLabel?.text)!)!
    }
    
    @objc func Something(a: UIButton) {
        upDownmanager.reset()
        mainView.countLabel.text = ""
        mainView.selectLabel.text = "선택하세요"
    }
}

