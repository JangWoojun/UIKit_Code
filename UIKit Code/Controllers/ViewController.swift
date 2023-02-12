import UIKit

class ViewController: UIViewController {

    private let mainView = MainView()
    private let diceManager = DiceManager()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonTapped()
    }

    func buttonTapped() {
        mainView.rollButton.addTarget(self, action: #selector(someThing), for: .touchUpInside)
    }
    
    @objc func someThing() {
        mainView.diceImageView1.image = diceManager.getRandomDice()
        mainView.diceImageView2.image = diceManager.getRandomDice()
    }

}

