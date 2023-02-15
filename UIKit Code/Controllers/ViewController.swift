import UIKit

final class ViewController: UIViewController {
    
    private let mainView = MainView()
    override func loadView() {
        view = mainView
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonTapped()
    }
    
    func buttonTapped() {
        mainView.mainButton.addTarget(self, action: #selector(moveNextView), for: .touchUpInside)
    }
    @objc func moveNextView() {
        if let presentingVC = presentingViewController {
            let tabBarCon = presentingVC as! UITabBarController
            let nav = tabBarCon.viewControllers?[0] as! UINavigationController
            let firstVC = nav.viewControllers[0] as! ViewController1
            firstVC.isLogin.toggle()
        }
        dismiss(animated: true)
    }
}
