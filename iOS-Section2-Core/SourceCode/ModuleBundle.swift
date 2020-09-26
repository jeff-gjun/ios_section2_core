import UIKit

public class ModuleBundle {
    public static func getImage(name: String, extension: String = "") -> UIImage? {
        let bundle = Bundle(for: ModuleBundle.self)
        guard let url = bundle.url(forResource: name, withExtension: `extension`) else { return nil }
        return UIImage(contentsOfFile: url.path)
    }
}
