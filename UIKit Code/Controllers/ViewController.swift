import UIKit

class ViewController: UIViewController {

    private let mainView = MainView()
    private let rpsManager = RPSManager()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonTapped()
    }

    func buttonTapped() {
        mainView.selectButton.addTarget(self, action: #selector(someThing), for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(something), for: .touchUpInside)
        mainView.sButton.addTarget(self, action: #selector(Something1), for: .touchUpInside)
        mainView.rButton.addTarget(self, action: #selector(Something2), for: .touchUpInside)
        mainView.pButton.addTarget(self, action: #selector(Something3), for: .touchUpInside)

    }
    
    @objc func someThing() {
        let game = rpsManager.play()
        mainView.mainLabel.text = game.game
        mainView.aiSubLabel.text = game.ai
        mainView.mySubLabel.text = game.my
        mainView.aiImageView.image = game.aiImg
        mainView.myImageView.image = game.myImg
        mainView.selectButton.isEnabled = false
        mainView.selectButton.setTitleColor(.systemGray3, for: .disabled)
    }

    @objc func something() {
        let game = rpsManager.reset()
        mainView.mainLabel.text = game.game
        mainView.aiSubLabel.text = game.ai
        mainView.mySubLabel.text = game.my
        mainView.aiImageView.image = game.aiImg
        mainView.myImageView.image = game.myImg
        mainView.selectButton.isEnabled = true
        mainView.selectButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func Something1() {
        rpsManager.my = "가위"
    }
    
    @objc func Something2() {
        rpsManager.my = "바위"
    }
    
    @objc func Something3() {
        rpsManager.my = "보"
    }
}

