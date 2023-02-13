import UIKit

class MainView: UIView {
    
    let textField: UITextField = {
        let tf = UITextField()
        tf.keyboardType = UIKeyboardType.emailAddress // 키보드 타입
        tf.placeholder = "이메일 입력" // 힌트 메세지
        tf.borderStyle = .roundedRect // 텍스트 필드 선 타입
        tf.clearButtonMode = .always // 클리어 버튼 여부
        tf.returnKeyType = .done // 엔터 버튼 바꾸기
        tf.becomeFirstResponder() // 첫번째 응답객체로 만들기
        
        return tf
    }()
    
    let doneButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Done", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 16)
        bt.backgroundColor = .systemBlue
        bt.titleLabel?.textAlignment = .center
        bt.layer.cornerRadius = 10
        
        return bt
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [textField, doneButton])
        st.spacing = 15
        st.axis = .horizontal
        st.distribution = .fill
        st.alignment = .fill
        
        return st
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
    }
    func setConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        doneButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.heightAnchor.constraint(equalToConstant: 48),
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 180),
            stackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            
            doneButton.widthAnchor.constraint(equalToConstant: 60)
        ])
    }
    
}
