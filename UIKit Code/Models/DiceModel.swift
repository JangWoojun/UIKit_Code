import UIKit

struct DiceManager {
    private var dice: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    func getRandomDice() -> UIImage {
        return dice.randomElement()!
    }
}
