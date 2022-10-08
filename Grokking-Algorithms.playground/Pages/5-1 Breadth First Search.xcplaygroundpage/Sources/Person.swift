import Foundation

public class Person {
    public let name: String
    public let isSaler: Bool
    
    private let uuid = UUID()
    
    public init(name: String, isSaler: Bool = false) {
        self.name = name
        self.isSaler = isSaler
    }
}

extension Person: Hashable, CustomStringConvertible {
    public var description: String {
        name
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    public static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.uuid == rhs.uuid
    }
}
