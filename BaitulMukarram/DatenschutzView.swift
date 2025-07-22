import SwiftUI

struct DatenschutzView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("Datenschutzerklärung")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 8)

                Text("1. Datenschutz auf einen Blick")
                    .font(.headline)

                Text("Allgemeine Hinweise\nDie folgenden Hinweise geben einen einfachen Überblick darüber, was mit Ihren personenbezogenen Daten passiert, wenn Sie unsere App nutzen.")

                Text("2. Datenerfassung")
                    .font(.headline)
                Text("Ihre Daten werden automatisch beim Besuch der App durch unsere IT-Systeme erfasst. Das sind vor allem technische Daten (z. B. Internetbrowser, Betriebssystem oder Uhrzeit des Seitenaufrufs).")

                Text("3. Ihre Rechte")
                    .font(.headline)
                Text("Sie haben jederzeit das Recht auf unentgeltliche Auskunft über Herkunft, Empfänger und Zweck Ihrer gespeicherten personenbezogenen Daten.")
            }
            .padding()
        }
        .navigationTitle("Datenschutz")
    }
}

#Preview {
    DatenschutzView()
}
