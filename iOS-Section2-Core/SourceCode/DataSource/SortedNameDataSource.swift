import Foundation

public class SortedNameDataSource: DataSource {
    
    public typealias Data = [String: [String]]
    
    public init() throws {
        try super.init(file: "sortednames")
    }
    
    public var data: Data? {
        return NSDictionary(contentsOfFile: self.target) as? Data
    }
}
