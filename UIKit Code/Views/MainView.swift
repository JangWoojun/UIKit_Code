import UIKit

class MainView: UIView {
    
    let mainLabel: UILabel = {
        let tv = UILabel()
        tv.text = "키와 몸무게를 입력해주세요"
        tv.font = .boldSystemFont(ofSize: 26)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let heightLabel: UILabel = {
        let tv = UILabel()
        tv.text = "키"
        tv.font = .boldSystemFont(ofSize: 22)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let heightTextField: UITextField = {
        let tf = UITextField()
        tf.keyboardType = UIKeyboardType.emailAddress
        tf.borderStyle = .roundedRect
        tf.returnKeyType = .next
        
        return tf
    }()
    
    lazy var heightStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [heightLabel, heightTextField])
        st.spacing = 10
        st.axis = .horizontal
        st.distribution = .fill
        st.alignment = .fill
        
        return st
    }()
    
    let weightLabel: UILabel = {
        let tv = UILabel()
        tv.text = "몸무게"
        tv.font = .boldSystemFont(ofSize: 22)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let weightTextField: UITextField = {
        let tf = UITextField()
        tf.keyboardType = UIKeyboardType.emailAddress
        tf.borderStyle = .roundedRect
        tf.returnKeyType = .next
        
        return tf
    }()
    
    lazy var weightStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [weightLabel, weightTextField])
        st.spacing = 10
        st.axis = .horizontal
        st.distribution = .fill
        st.alignment = .fill
        
        return st
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [mainLabel, heightStackView, weightStackView])
        st.spacing = 25
        st.axis = .vertical
        st.distribution = .fill
        st.alignment = .fill
        
        return st
    }()
    
    let selectButton: UIButton = {
        let bt = UIButton(type: .system )
        bt.setTitle("BMI 계산하기", for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 22)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemBlue
        
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
        self.addSubview(stackView)
        self.addSubview(selectButton)
    }
    
    func setConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        heightStackView.translatesAutoresizingMaskIntoConstraints = false
        weightStackView.translatesAutoresizingMaskIntoConstraints = false
        heightTextField.translatesAutoresizingMaskIntoConstraints = false
        weightTextField.translatesAutoresizingMaskIntoConstraints = false
        selectButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 130),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            heightStackView.heightAnchor.constraint(equalToConstant: 35),
            weightLabel.heightAnchor.constraint(equalToConstant: 35),
            
            heightTextField.widthAnchor.constraint(equalToConstant: 250),
            weightTextField.widthAnchor.constraint(equalToConstant: 250),
            
            selectButton.heightAnchor.constraint(equalToConstant: 45),
            selectButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            selectButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            selectButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
}
