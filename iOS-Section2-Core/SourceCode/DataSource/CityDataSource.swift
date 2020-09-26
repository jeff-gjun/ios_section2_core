import Foundation

public class CityDataSource: DataSource {
    
    public typealias Data = [[String: String]]
    
    public init() throws {
        try super.init(file: "cities")
    }
    
    public var data: Data? {
        return NSArray(contentsOfFile: self.target) as? Data
    }
}
