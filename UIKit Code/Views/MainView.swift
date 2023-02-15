import UIKit

class MainView: UIView {
    
    let mainButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.backgroundColor = .black
        bt.setTitle("login", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 22)
        
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        self.backgroundColor = .white
        self.addSubview(mainButton)
    }
    
    func setConstraints() {
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainButton.widthAnchor.constraint(equalToConstant: 150),
            mainButton.heightAnchor.constraint(equalToConstant: 45),
            mainButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            mainButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}
