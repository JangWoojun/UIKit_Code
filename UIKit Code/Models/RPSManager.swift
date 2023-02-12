import UIKit

class RPSManager {
    var ai = Int.random(in: 0...2)
    var my: String = "바위"
    
    func play() -> Game {
        let game = (ai, my)
        
        switch game {
        case let (a, b)where a == 0 && b == "가위":
            return Game(ai: "가위", my: "가위", game: "비김", aiImg: UIImage(named: "scissors")!, myImg: UIImage(named: "scissors")!)
        case let (a, b)where a == 0 && b == "바위":
            return Game(ai: "가위", my: "바위", game: "이김", aiImg: UIImage(named: "scissors")!, myImg: UIImage(named: "rock")!)
        case let (a, b)where a == 0 && b == "보":
            return Game(ai: "가위", my: "보", game: "짐", aiImg: UIImage(named: "scissors")!, myImg: UIImage(named: "paper")!)
            
        case let (a, b)where a == 1 && b == "가위":
            return Game(ai: "바위", my: "가위", game: "짐", aiImg: UIImage(named: "rock")!, myImg: UIImage(named: "scissors")!)
        case let (a, b)where a == 1 && b == "바위":
            return Game(ai: "바위", my: "바위", game: "비김", aiImg: UIImage(named: "rock")!, myImg: UIImage(named: "rock")!)
        case let (a, b)where a == 1 && b == "보":
            return Game(ai: "바위", my: "보", game: "이김", aiImg: UIImage(named: "rock")!, myImg: UIImage(named: "paper")!)
        
        case let (a, b)where a == 2 && b == "가위":
            return Game(ai: "보", my: "가위", game: "이김", aiImg: UIImage(named: "paper")!, myImg: UIImage(named: "scissors")!)
        case let (a, b)where a == 2 && b == "바위":
            return Game(ai: "보", my: "바위", game: "짐", aiImg: UIImage(named: "paper")!, myImg: UIImage(named: "rock")!)
        case let (a, b)where a == 2 && b == "보":
            return Game(ai: "보", my: "보", game: "비김", aiImg: UIImage(named: "paper")!, myImg: UIImage(named: "paper")!)
            
            
        case (_, _):
            return Game(ai: "오류", my: "오류", game: "오류", aiImg: UIImage(named: "ready")!, myImg: UIImage(named: "ready")!)
        }

    }
    
    func reset() -> Game {
        ai = Int.random(in: 0...2)
        return Game(ai: "준비", my: "준비", game: "선택하세요", aiImg: UIImage(named: "ready")!, myImg: UIImage(named: "ready")!)
    }
    
    struct Game {
        var ai: String
        var my: String
        var game: String
        var aiImg: UIImage
        var myImg: UIImage
    }
}
