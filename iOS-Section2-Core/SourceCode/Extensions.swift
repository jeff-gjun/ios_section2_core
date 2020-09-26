import UIKit

public extension UserDefaults {
    
    var favorite_food: String? {
        get {
            return UserDefaults.standard.string(forKey: "favorite_food")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "favorite_food")
            UserDefaults.standard.synchronize()
        }
    }
}

public extension UIViewController {
    
    enum SegueId: String {
        case pickFavoriteFood = "pickFavoriteFood"
        case unwindToHome = "unwindToHome"
        case toSigninVC = "toSigninVC"
        case toSignupVC = "toSignupVC"
        case toAddVC = "toAddVC"
        case toEditVC = "toEditVC"
        case toDetailVC = "toDetailVC"
    }
    
    func performSegue(segueId: SegueId, sender: Any? = nil) {
        self.performSegue(withIdentifier: segueId.rawValue, sender: sender)
    }
}
