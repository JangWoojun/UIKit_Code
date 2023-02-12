import UIKit

class MainView: UIView {
    
    let selectLabel: UILabel = {
        let tv = UILabel()
        tv.text = "선택하세요"
        tv.font = .boldSystemFont(ofSize: 22)
        tv.textColor = .black
        tv.textAlignment = .center
        tv.backgroundColor = .white
        
        return tv
    }()
    
    let countLabel: UILabel = {
        let tv = UILabel()
        tv.font = .boldSystemFont(ofSize: 22)
        tv.textColor = .black
        tv.textAlignment = .center
        tv.backgroundColor = .white

        return tv
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [selectLabel, countLabel])
        st.spacing = 15
        st.axis = .vertical
        st.distribution = .fillEqually
        st.alignment = .fill
                    
        return st
    }()
    
    lazy var gameView: UIView = {
        let gv = UIView()
        gv.addSubview(stackView)
        gv.backgroundColor = .systemBlue
        
        return gv
    }()
    
    let button1: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("1", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button2: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("2", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button3: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("3", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button4: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("4", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button5: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("5", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button6: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("6", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button7: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("7", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button8: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("8", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button9: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("9", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    let button10: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("10", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .systemGreen
        
        return bt
    }()
    
    lazy var buttonStack1: UIStackView = {
        let st = UIStackView(arrangedSubviews: [button1, button2, button3, button4, button5])
        st.spacing = 10
        st.axis = .horizontal
        st.distribution = .fillEqually
        st.alignment = .fill
        
        return st
    }()
    
    lazy var buttonStack2: UIStackView = {
        let st = UIStackView(arrangedSubviews: [button6, button7, button8, button9, button10])
        st.spacing = 10
        st.axis = .horizontal
        st.distribution = .fillEqually
        st.alignment = .fill
        
        return st
    }()
    
    lazy var mainButtonStack: UIStackView = {
        let st = UIStackView(arrangedSubviews: [buttonStack1, buttonStack2])
        st.spacing = 10
        st.axis = .vertical
        st.distribution = .fillEqually
        st.alignment = .fill
        
        return st
    }()
    
    let resetButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.backgroundColor = .systemPurple
        bt.setTitleColor(.white, for: .normal)
        bt.setTitle("초기화", for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 18)

        return bt
    }()
    
    let selectButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.backgroundColor = .systemBlue
        bt.setTitleColor(.white, for: .normal)
        bt.setTitle("선택", for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 18)
        
        return bt
    }()
    
    lazy var choiceStackView: UIStackView = {
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
        self.backgroundColor = .white
        self.addSubview(gameView)
        self.addSubview(mainButtonStack)
        self.addSubview(choiceStackView)
    }
    func setConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        gameView.translatesAutoresizingMaskIntoConstraints = false
        mainButtonStack.translatesAutoresizingMaskIntoConstraints = false
        choiceStackView.translatesAutoresizingMaskIntoConstraints = false
        selectButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: gameView.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: gameView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo:gameView.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: gameView.bottomAnchor, constant: -20),
            
            gameView.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            gameView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            gameView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            gameView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            gameView.heightAnchor.constraint(equalToConstant: 160),
            
            button1.heightAnchor.constraint(equalTo: button1.widthAnchor, multiplier: 1),
               
            mainButtonStack.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 80),
            mainButtonStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            mainButtonStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            selectButton.heightAnchor.constraint(equalToConstant: 45),
                
            choiceStackView.topAnchor.constraint(equalTo: mainButtonStack.bottomAnchor, constant: 50),
            choiceStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            choiceStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        
        ])
    }
    
}
