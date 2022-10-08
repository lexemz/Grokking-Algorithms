import Foundation

public struct Queue<T> {
    private var array: [T] = []
    public init() {}
    
    public var isEmpty: Bool {
      array.isEmpty
    }

    public var peek: T? {
      array.first
    }

    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func enqueue(_ elements: [T]) {
        for element in elements {
            array.append(element)
        }
    }
    
    public mutating func dequeue() -> T? {
      isEmpty ? nil : array.removeFirst()
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        "Front <- \(array) <- Back"
    }
}
