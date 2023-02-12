import UIKit

class UPDownManager {
    private var count = Int.random(in: 1...10)
    
    func chkCount(chk: Int) -> String {
        if chk == count {
            return "Bingo!"
        } else if chk > count {
            return "Down"
        } else {
            return "UP"
        }
    }
    
    func reset() {
        count = Int.random(in: 1...10)
    }
}
