import UIKit
import AVFoundation

final class ViewController: UIViewController {
    
    private let mainView = MainView()
    weak var timer: Timer?
    var num = 0
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonTapped()
        slide()
    }
    
    func buttonTapped() {
        mainView.startButton.addTarget(self, action: #selector(something), for: .touchUpInside)
    }
    
    func slide() {
        mainView.slider.addTarget(self, action: #selector(someThing), for: .valueChanged)
    }
    
    @objc func someThing(sender: UISlider) {
        num = Int(sender.value * 60)
        mainView.mainLabel.text = "\(num)초"
        
        if num == 0 {
            mainView.startButton.isEnabled = false
        } else {
            mainView.startButton.isEnabled = true
        }
    }
    @objc func something(sender: UISlider) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [self] _ in
            if num > 0 {
                num -= 1
                mainView.slider.setValue(Float(num) / 60.0, animated: true)
                mainView.mainLabel.text = "\(num)초"
            } else {
                timer?.invalidate()
                AudioServicesPlayAlertSound(SystemSoundID(1322))
                mainView.mainLabel.text = "종료"
                mainView.startButton.isEnabled = false
            }
        })
    }
    
    func resetButtonTapped(_ sender: UIButton) {
        mainView.mainLabel.text = "초를 선택하세요"
        mainView.slider.setValue(0.5, animated: true)
        timer?.invalidate()
        num = 0
    }
}

