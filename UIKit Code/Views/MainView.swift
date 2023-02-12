import UIKit

class MainView: UIView {
    
    let mainLabel: UILabel = {
        let tv = UILabel()
        tv.text = "Dice Game"
        tv.textColor = .black
        tv.font = .boldSystemFont(ofSize: 32)
        
        return tv
    }()
    
    let diceImageView1: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "black1")
        return img
    }()
    
    let diceImageView2: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "black1")
        return img
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [diceImageView1, diceImageView2])
        st.spacing = 20
        st.axis = .horizontal
        st.distribution = .fillEqually
        st.alignment = .fill
        
        return st
    }()
    
    let rollButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.backgroundColor = .black
        bt.setTitle("Rolling", for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 18)
        bt.setTitleColor(.white, for: .normal)
        bt.layer.cornerRadius = 5
        
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
        self.addSubview(mainLabel)
        self.addSubview(diceImageView1)
        self.addSubview(diceImageView2)
        self.addSubview(stackView)
        self.addSubview(rollButton)

    }
    func setConstraints() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        rollButton.translatesAutoresizingMaskIntoConstraints = false
        diceImageView1.translatesAutoresizingMaskIntoConstraints = false
        diceImageView2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 110),
            mainLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),

            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            diceImageView1.heightAnchor.constraint(equalToConstant: 150),
            diceImageView1.widthAnchor.constraint(equalTo: diceImageView1.heightAnchor, multiplier: 1),
                        
            rollButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            rollButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            rollButton.heightAnchor.constraint(equalToConstant: 50),
            rollButton.widthAnchor.constraint(equalToConstant: 150)

            
        ])
    }
    
}
