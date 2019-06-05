import SwiftUI

final class MenuView: View {
    private let items: [MenuItem]

    init(items: [MenuItem]) {
        self.items = items
    }

    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationButton(destination: destinationView(for: item)) {
                    Text(item.title).color(.green).font(.headline)
                }
            }
            .navigationBarTitle(Text("Examples"))
        }
    }
}

private func destinationView(for item: MenuItem) -> AnyView {
    switch item.example {
    case .helloWorld: return AnyView(HelloWorldView())
    case .handlingState: return AnyView(HandlingStateView())
    }
}
