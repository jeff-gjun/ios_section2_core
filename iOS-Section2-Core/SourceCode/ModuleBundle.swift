import UIKit

public class ModuleBundle {
    public static func getImage(name: String, extension: String = "") -> UIImage? {
        let bundle = Bundle(for: ModuleBundle.self)
        guard let url = bundle.url(forResource: name, withExtension: `extension`) else { return nil }
        return UIImage(contentsOfFile: url.path)
    }
}

public class ImagesBundle {
    public enum AnalyticsImage: String {
        case icon1, icon2, icon3, icon4
        case picture1 = "img1", picture2 = "img2", picture3 = "img3", picture4 = "img4"
    }
    
    public enum RealtimeDatabaseImage: String {
        case closeLight = "close_light", openLight = "open_light"
        case lightIcon, rgbIcon = "rgb_icon", thermometerIcon = "thermometer"
    }
    
    private static var bundle: Bundle? {
        let assetBundle = Bundle(for: ImagesBundle.self)
        guard let url = assetBundle.resourceURL?.appendingPathComponent("Assets").appendingPathExtension("bundle") else {
            return nil
        }
        return Bundle(url: url)
    }
    
    public static func get(_ image: AnalyticsImage) -> UIImage? {
        UIImage(named: image.rawValue, in: Self.bundle, compatibleWith: nil)
    }
    
    public static func get(_ image: RealtimeDatabaseImage) -> UIImage? {
        UIImage(named: image.rawValue, in: Self.bundle, compatibleWith: nil)
    }
}
