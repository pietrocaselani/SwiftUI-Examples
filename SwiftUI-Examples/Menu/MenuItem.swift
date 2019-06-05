import SwiftUI

struct MenuItem: Hashable {
    let title: String
    let example: Examples

    init(example: Examples) {
        self.title = example.rawValue
        self.example = example
    }
}

extension MenuItem: SelectionManager {
    typealias SelectionValue = MenuItem

    mutating func select(_ value: MenuItem) {
        print("select \(value.title)")
    }

    mutating func deselect(_ value: MenuItem) {
        print("deselect \(value.title)")
    }

    func isSelected(_ value: MenuItem) -> Bool {
        print("isSelected \(value.title)")
        return false
    }
}

extension MenuItem: Identifiable {
    typealias ID = String

    var id: String {
        return self.title
    }
}
