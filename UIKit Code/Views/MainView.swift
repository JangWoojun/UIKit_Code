import UIKit

class MainView: UIView {
    
    let mainLabel: UILabel = {
        let tv = UILabel()
        tv.text = "선택하세요"
        tv.textColor = .black
        tv.font = .boldSystemFont(ofSize: 28)
        
        return tv
    }()
    
    let aiMainLabel: UILabel = {
        let tv = UILabel()
        tv.text = "컴퓨터의 선택"
        tv.textAlignment = .center
        tv.textColor = .black
        tv.font = .boldSystemFont(ofSize: 20)
        
        return tv
    }()
    
    let aiImageView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "ready")
        
        return img
    }()
    
    let aiSubLabel: UILabel = {
        let tv = UILabel()
        tv.textAlignment = .center
        tv.text = "준비"
        tv.textColor = .black
        tv.font = .boldSystemFont(ofSize: 20)
        
        return tv
    }()
    
    lazy var aiStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [aiMainLabel, aiImageView, aiSubLabel])
        st.spacing = 20
        st.axis = .vertical
        st.distribution = .fill
        st.alignment = .fill
        
        return st
    }()
    
    let myMainLabel: UILabel = {
        let tv = UILabel()
        tv.text = "나의 선택"
        tv.textAlignment = .center
        tv.textColor = .black
        tv.font = .boldSystemFont(ofSize: 20)
        
        return tv
    }()
    
    let myImageView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "ready")
        
        return img
    }()
    
    let mySubLabel: UILabel = {
        let tv = UILabel()
        tv.textAlignment = .center
        tv.text = "준비"
        tv.textColor = .black
        tv.font = .boldSystemFont(ofSize: 20)
        
        return tv
    }()
    
    lazy var myStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [myMainLabel, myImageView, mySubLabel])
        st.spacing = 20
        st.axis = .vertical
        st.distribution = .fill
        st.alignment = .fill
        
        return st
    }()
    
    lazy var mainStack: UIStackView = {
        let st = UIStackView(arrangedSubviews: [aiStackView, myStackView])
        st.spacing = 20
        st.axis = .horizontal
        st.distribution = .fillEqually
        st.alignment = .center
        
        return st
    }()
    
    let sButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("가위", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        bt.titleLabel?.font = .boldSystemFont(ofSize: 20)

        return bt
    }()
    
    let rButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("바위", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        bt.titleLabel?.font = .boldSystemFont(ofSize: 20)
        
        return bt
    }()
    
    let pButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("보", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        bt.titleLabel?.font = .boldSystemFont(ofSize: 20)

        return bt
    }()
    
    lazy var rpsStack: UIStackView = {
        let st = UIStackView(arrangedSubviews: [sButton, rButton, pButton])
        st.spacing = 20
        st.axis = .horizontal
        st.distribution = .fillEqually
        st.alignment = .fill
        
        return st
    }()
    
    let resetButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("초기화", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemPurple
        bt.titleLabel?.font = .boldSystemFont(ofSize: 18)

        return bt
    }()
    
    let selectButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("선택", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemBlue
        bt.titleLabel?.font = .boldSystemFont(ofSize: 18)
        
        return bt
    }()
    
    lazy var  mainButtonStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [resetButton, selectButton])
        st.spacing = 20
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
        self.addSubview(mainLabel)
        self.addSubview(rpsStack)
        self.addSubview(mainStack)
        self.addSubview(mainButtonStackView)
        self.backgroundColor = .white
    }
    func setConstraints() {
        aiImageView.translatesAutoresizingMaskIntoConstraints = false
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        rButton.translatesAutoresizingMaskIntoConstraints = false
        pButton.translatesAutoresizingMaskIntoConstraints = false
        sButton.translatesAutoresizingMaskIntoConstraints = false
        selectButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        rpsStack.translatesAutoresizingMaskIntoConstraints = false
        mainButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aiImageView.heightAnchor.constraint(equalTo: aiImageView.widthAnchor, multiplier: 1),
            myImageView.heightAnchor.constraint(equalTo: myImageView.widthAnchor, multiplier: 1),
            
            rButton.heightAnchor.constraint(equalTo: rButton.widthAnchor, multiplier: 1),
            pButton.heightAnchor.constraint(equalTo: pButton.widthAnchor, multiplier: 1),
            sButton.heightAnchor.constraint(equalTo: sButton.widthAnchor, multiplier: 1),
            
            resetButton.heightAnchor.constraint(equalToConstant: 45),
            selectButton.heightAnchor.constraint(equalToConstant: 45),
            
            mainLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 70),
            mainLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            mainStack.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            mainStack.topAnchor.constraint(equalTo: mainLabel.topAnchor, constant: 80),
            mainStack.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            mainStack.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            mainStack.bottomAnchor.constraint(equalTo: rpsStack.topAnchor, constant: -50),
            
            rpsStack.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            rpsStack.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            
            mainButtonStackView.topAnchor.constraint(equalTo: rpsStack.bottomAnchor, constant: 60),
            mainButtonStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            mainButtonStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            mainButtonStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -150)
           
        ])
    }
    
}
