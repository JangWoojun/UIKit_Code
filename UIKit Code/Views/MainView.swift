import UIKit

class MainView: UIView {
    
    let titleLabel: UILabel = {
        let tv = UILabel()
        tv.text = "타이머"
        tv.font = .boldSystemFont(ofSize: 20)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let line1: UIView = {
        let v = UIView()
        v.backgroundColor = .systemGray4
        
        return v
    }()
    
    let mainLabel: UILabel = {
        let tv = UILabel()
        tv.text = "초를 선택하세요"
        tv.font = .boldSystemFont(ofSize: 26)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let zeroLabel: UILabel = {
        let tv = UILabel()
        tv.text = "0초"
        tv.font = .systemFont(ofSize: 20)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    let slider: UISlider = {
        let sd = UISlider()
        sd.setValue(0.5, animated: true)
        
        return sd
    }()
    
    let sixtyLabel: UILabel = {
        let tv = UILabel()
        tv.text = "60초"
        tv.font = .systemFont(ofSize: 20)
        tv.textColor = .black
        tv.textAlignment = .center
        
        return tv
    }()
    
    lazy var mainStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [zeroLabel, slider, sixtyLabel])
        st.spacing = 10
        st.axis = .horizontal
        st.distribution = .fill
        st.alignment = .fill
        
        return st
    }()
    
    let line2: UIView = {
        let v = UIView()
        v.backgroundColor = .systemGray4
        
        return v
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [titleLabel,line1,mainLabel,mainStackView,line2])
        st.spacing = 20
        st.axis = .vertical
        st.distribution = .fill
        st.alignment = .fill
        
        return st
    }()
    
    let resetButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("RESET", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 22)
        bt.backgroundColor = .systemGreen
        bt.layer.cornerRadius = 10
        
        return bt
    }()
    
    let startButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("START", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 22)
        bt.backgroundColor = .systemBlue
        bt.layer.cornerRadius = 10
        
        return bt
    }()
    
    lazy var buttonStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [resetButton, startButton])
        st.spacing = 15
        st.axis = .horizontal
        st.distribution = .fillEqually
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
        self.backgroundColor = .white
        self.addSubview(stackView)
        self.addSubview(buttonStackView)
    }
    func setConstraints() {
        line1.translatesAutoresizingMaskIntoConstraints = false
        line2.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            line1.heightAnchor.constraint(equalToConstant: 1),
            line2.heightAnchor.constraint(equalToConstant: 1),
            
            mainLabel.heightAnchor.constraint(equalToConstant: 70),
            
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 130),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            stackView.heightAnchor.constraint(equalToConstant: 200),
            
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            startButton.heightAnchor.constraint(equalToConstant: 50),
            
            buttonStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            buttonStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            buttonStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
            
        ])
    }
    
}
