import UIKit

class NextView: UIView {

    let mainLabel: UILabel = {
        let tv = UILabel()
        tv.text = "BMI 결과값"
        tv.font = .boldSystemFont(ofSize: 22)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let bmiLabel: UILabel = {
        let tv = UILabel()
        tv.text = "26"
        tv.font = .boldSystemFont(ofSize: 26)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let bmiTextLabel: UILabel = {
        let tv = UILabel()
        tv.text = "살을 빼세요"
        tv.font = .boldSystemFont(ofSize: 22)
        tv.textColor = .black
        tv.textAlignment = .center
        tv.layer.cornerRadius = 10
        
        return tv
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [mainLabel, bmiLabel, bmiTextLabel])
        st.spacing = 20
        st.axis = .vertical
        st.distribution = .equalSpacing
        st.alignment = .fill
                    
        return st
    }()
    
    let reButton: UIButton = {
        let bt = UIButton(type: .system )
        bt.setTitle("다시 계산하기", for: .normal)
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
        self.addSubview(reButton)
    }
    
    func setConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        reButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 130),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 200),
            
            reButton.heightAnchor.constraint(equalToConstant: 45),
            reButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            reButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            reButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
}
