import Foundation

public class DataSource {
    
    let source: String
    let target: String
    
    public init(file: String) throws {
        guard let source = Bundle(for: type(of: self)).path(forResource: file, ofType: "plist") else {
            throw NSError(domain: "找不到檔案來源", code: 0, userInfo: nil)
        }
        guard let target = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.path else {
            throw NSError(domain: "找不到檔案目標", code: 0, userInfo: nil)
        }
        print("source:", source)
        print("target:", target)
        self.source = source
        self.target = target.appending("/\(file).plist")
        if !FileManager.default.fileExists(atPath: self.target) {
            try? FileManager.default.moveItem(atPath: self.source, toPath: self.target)
        }
    }
}
