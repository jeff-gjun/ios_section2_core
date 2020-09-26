import Foundation

public class PresidentDataSource: DataSource {
    
    public typealias Data = [[String: String]]
    
    public init() throws {
        try super.init(file: "presidents")
    }
    
    public var data: Data? {
        let dictionary = NSDictionary(contentsOfFile: self.target) as? [String: Any]
        return dictionary?["presidents"] as? Data
    }
}
