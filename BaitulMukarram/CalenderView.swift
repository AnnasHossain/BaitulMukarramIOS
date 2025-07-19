
import SwiftUI

struct CalenderView: View {
    var body: some View {
        VStack {
            Text("Calendar")
                .font(.largeTitle)
                .padding()
            
            Text("Events and important dates will appear here.")
        }
        .navigationTitle("Calendar")
    }
}

#Preview {
    CalenderView()
}
