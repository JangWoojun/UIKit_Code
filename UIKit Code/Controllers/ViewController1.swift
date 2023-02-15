import UIKit

class ViewController1: UIViewController {
    
    private let mainView = UIView1()
    
    var isLogin = false
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
                
        navigationController?.navigationBar.tintColor = .blue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        title = "Main"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if !isLogin {
            let vc = ViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }


}
