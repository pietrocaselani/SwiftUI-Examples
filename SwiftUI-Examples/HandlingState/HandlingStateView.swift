import SwiftUI

struct HandlingStateView: View {
    @State private var count = 0

    var body: some View {
        HStack {
            Button(action: {
                self.count -= 1
            }) { Text("-") }
            Text("\(count)")
            Button(action: {
                self.count += 1
            }) { Text("+") }
        }
    }
}
