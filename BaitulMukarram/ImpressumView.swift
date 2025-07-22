import SwiftUI

struct ImpressumView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("Impressum")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 8)

                Text("Angaben gemäß § 5 TMG")
                    .font(.headline)

                Text("Baitul Mukarram Moschee\nMusterstraße 123\n12345 Berlin")

                Text("Vertreten durch:")
                    .font(.headline)
                Text("Imam Mustafa Rahman")

                Text("Kontakt:")
                    .font(.headline)
                Text("Telefon: 030 / 12345678\nE-Mail: info@baitulmukarram.de")

                Text("Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV:")
                    .font(.headline)
                Text("Imam Mustafa Rahman\nMusterstraße 123\n12345 Berlin")
            }
            .padding()
        }
        .navigationTitle("Impressum")
    }
}

#Preview {
    ImpressumView()
}
