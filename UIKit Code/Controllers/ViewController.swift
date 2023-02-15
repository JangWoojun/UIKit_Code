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
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: ViewController1())
        let vc2 = ViewController2()
        
        vc1.title = "red"
        vc2.title = "blue"
        
        tabBarVC.setViewControllers([vc1, vc2], animated: true)
        tabBarVC.modalPresentationStyle = .fullScreen
        tabBarVC.tabBar.backgroundColor = .white
        
        guard let items = tabBarVC.tabBar.items else { return }
        items[0].image = UIImage(systemName: "note")
        items[1].image = UIImage(systemName: "doc")
        
        present(tabBarVC, animated: true)
    }
}
