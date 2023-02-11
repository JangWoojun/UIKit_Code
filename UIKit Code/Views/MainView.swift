import UIKit

class MainView: UIView {

    let textLabel: UILabel = {
        let tv = UILabel()
        tv.textColor = .black
        tv.font = .boldSystemFont(ofSize: 28)
        tv.text = "안녕하세요"
        return tv
    }()
    
    lazy var selectButton: UIButton = {
        let bt = UIButton(type: .custom)
        bt.backgroundColor = .black
        bt.setTitle("클릭", for: .normal)
        bt.titleLabel?.textColor = .white
        bt.titleLabel?.font = .boldSystemFont(ofSize: 18)
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
        self.addSubview(textLabel)
        self.addSubview(selectButton)
    }
    func setConstraints() {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        selectButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 180),
            selectButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            selectButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 120),
            selectButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -120)
        ])
    }
    
}
