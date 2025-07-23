import SwiftUI

struct PrayerTime: View {
    var prayerName: String
    var prayerTime: String
    @State private var isCurrent = false

    var body: some View {
        ZStack {
            VStack {
                Text(prayerName + ":")
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(prayerTime + " Uhr")
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(.systemBackground)))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .shadow(radius: 1)
            Spacer()
        }
    }
/*
    func checkIfCurrent() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let now = formatter.string(from: Date())
        if now == prayerTime {
            isCurrent = true
        } else {
            isCurrent = false
        }
    } */
}

#Preview {
    PrayerTime(prayerName: "Fajr", prayerTime: "04:15")
}
