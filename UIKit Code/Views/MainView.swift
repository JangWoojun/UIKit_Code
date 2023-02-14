import UIKit

class MainView: UIView {
    
    lazy var idInputView: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        v.layer.cornerRadius = 5
        v.addSubview(idTextField)
        v.addSubview(idLabel)

        return v
    }()
    
    let idTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.keyboardType = .emailAddress

        return tf
    }()
    
    let idLabel: UILabel = {
        let tv = UILabel()
        tv.text = "이메일주소 또는 전화번호"
        tv.font = UIFont.systemFont(ofSize: 18)
        tv.textColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        
        return tv
    }()
    
    lazy var passwordInputView: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        v.layer.cornerRadius = 5
        v.addSubview(passwordTextField)
        v.addSubview(passwordLabel)
        v.addSubview(passwordButton)
        
        return v
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.isSecureTextEntry = true
        tf.clearsOnBeginEditing = false
        
        return tf
    }()
    
    
    let passwordLabel: UILabel = {
        let tv = UILabel()
        tv.text = "비밀번호"
        tv.font = UIFont.systemFont(ofSize: 18)
        tv.textColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        
        return tv
    }()
    
    let passwordButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("표시", for: .normal)
        bt.setTitleColor(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1), for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
        
        return bt
    }()
    
    let loginButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.backgroundColor = .clear
        bt.layer.cornerRadius = 5
        bt.layer.borderWidth = 1
        bt.layer.borderColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        bt.setTitle("로그인", for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        bt.setTitleColor(.white, for: .normal)
        bt.isEnabled = false
        
        return bt
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [idInputView, passwordInputView, loginButton])
        st.spacing = 18
        st.axis = .vertical
        st.distribution = .fillEqually
        st.alignment = .fill
                    
        return st
    }()
    
    let rePasswordButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.backgroundColor = .clear
        bt.setTitle("비밀번호 재설정", for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        bt.setTitleColor(.white, for: .normal)
        
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
        self.addSubview(stackView)
        self.addSubview(rePasswordButton)
    }
    
    lazy var emailInfoLabelCenterYConstraint = idLabel.centerYAnchor.constraint(equalTo: idInputView.centerYAnchor)
    lazy var passwordInfoLabelCenterYConstraint = passwordLabel.centerYAnchor.constraint(equalTo: passwordInputView.centerYAnchor)
    
    func setConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordButton.translatesAutoresizingMaskIntoConstraints = false
        rePasswordButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.heightAnchor.constraint(equalToConstant: 180),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
            idTextField.leadingAnchor.constraint(equalTo: idInputView.leadingAnchor, constant: 8),
            idTextField.trailingAnchor.constraint(equalTo: idInputView.trailingAnchor, constant: -8),
            idTextField.topAnchor.constraint(equalTo: idInputView.topAnchor, constant: 15),
            idTextField.bottomAnchor.constraint(equalTo: idInputView.bottomAnchor, constant: -2),
            
            idLabel.leadingAnchor.constraint(equalTo: idInputView.leadingAnchor, constant: 8),
            idLabel.trailingAnchor.constraint(equalTo: idInputView.trailingAnchor, constant: -8),
            emailInfoLabelCenterYConstraint,
            
            passwordTextField.leadingAnchor.constraint(equalTo: passwordInputView.leadingAnchor, constant: 8),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordInputView.trailingAnchor, constant: -8),
            passwordTextField.topAnchor.constraint(equalTo: passwordInputView.topAnchor, constant: 15),
            passwordTextField.bottomAnchor.constraint(equalTo: passwordInputView.bottomAnchor, constant: -2),
            
            passwordLabel.leadingAnchor.constraint(equalTo: passwordInputView.leadingAnchor, constant: 8),
            passwordLabel.trailingAnchor.constraint(equalTo: passwordInputView.trailingAnchor, constant: -8),
            passwordInfoLabelCenterYConstraint,
            
            passwordButton.topAnchor.constraint(equalTo: passwordInputView.topAnchor, constant: 15),
            passwordButton.bottomAnchor.constraint(equalTo: passwordInputView.bottomAnchor, constant: -15),
            passwordButton.trailingAnchor.constraint(equalTo: passwordInputView.trailingAnchor, constant: -8),
            
            rePasswordButton.heightAnchor.constraint(equalToConstant: 48),
            rePasswordButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
            rePasswordButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            rePasswordButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
        ])
    }
}
