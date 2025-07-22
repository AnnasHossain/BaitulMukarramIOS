import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("Über uns")
                .font(.title)
                .padding()

            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(0..<5) { index in
                        //Text("Gebetszeit \(index + 1)")
                        Text("Die Baitul Mukarram Moschee ist ein Ort des Gebets und der Gemeinschaft. Hier erfährst du mehr über unsere Geschichte und unsere Arbeit.")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.2)))
                            .padding(.horizontal, 20)
                    }
                }
            }
            
            
        }
        .navigationTitle("About")
    }
}

#Preview {
    AboutView()
}
