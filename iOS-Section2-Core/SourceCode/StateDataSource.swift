import Foundation

public class StateDataSource: DataSource {
    
    public typealias Data = [String: [String]]
    
    public init() throws {
        try super.init(file: "states")
    }
    
    public var data: Data? {
        return NSDictionary(contentsOfFile: self.target) as? Data
    }
}
