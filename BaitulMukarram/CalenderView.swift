import SwiftUI

struct CalenderView: View {
    var body: some View {
        VStack {
            Text("Kalender")
                .font(.title)
                .padding()

            Text("Hier werden alle zukünftigen Veranstaltungen und Termine angezeigt.")
                .padding()

            List {
                Text("Freitagsgebet - 2025-07-20")
                Text("Islamischer Vortrag - 2025-07-21")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
                Text("Kinderprogramm - 2025-07-25")
            }
            
        }
        .navigationTitle("Kalender")
    }
}

#Preview {
    CalenderView()
}
