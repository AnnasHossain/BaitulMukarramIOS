import SwiftUI

struct PrayerDay {
    let date: String // Format: "MM-dd"
    let fajr: String
    let dhuhr: String
    let asr: String
    let maghrib: String
    let isha: String
}

struct PrayerView: View {
    let prayerTimes: [PrayerDay] = [
        PrayerDay(date: "22-07", fajr: "04:15", dhuhr: "13:15", asr: "17:00", maghrib: "20:45", isha: "22:10"),
        PrayerDay(date: "23-07", fajr: "04:16", dhuhr: "13:16", asr: "17:01", maghrib: "20:44", isha: "22:09"),
        PrayerDay(date: "24-07", fajr: "04:17", dhuhr: "13:17", asr: "17:02", maghrib: "20:43", isha: "22:08"),
        PrayerDay(date: "25-07", fajr: "04:17", dhuhr: "13:17", asr: "17:02", maghrib: "20:43", isha: "22:08")
    ]

    
    var todaysPrayerTimes: PrayerDay? {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM"
        let today = formatter.string(from: Date())
        return prayerTimes.first { $0.date == today }
    }
        
    var body: some View {
        
        VStack {
            Text("Gebetszeiten")
                .padding()
                .font(.title)
            List{
                if let times = todaysPrayerTimes {
                    Text("Tag: 2025-\(times.date)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top)
                    VStack(spacing: 10){
                        HStack(spacing: 15){
                            PrayerTime(prayerName: "Fajr", prayerTime: times.fajr)
                            PrayerTime(prayerName: "Dhuhr", prayerTime: times.dhuhr)
                            PrayerTime(prayerName: "Asr", prayerTime: times.asr)
                        }
                        HStack(spacing: 10){
                            PrayerTime(prayerName: "Maghrib", prayerTime: times.maghrib)
                            PrayerTime(prayerName: "Isha", prayerTime: times.isha)
                        }
                    }
                }else {
                    Text("⚠️ Zurzeit keine Gebetszeiten verfügbar.")
                        .foregroundColor(.red)
                        .padding()
                }
                VStack(){
                    PrayerTime(prayerName: "1. Freitagsgebet", prayerTime: "13:30");
                    PrayerTime(prayerName: "2. Freitagsgebet", prayerTime: "14:30");
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    .padding()
    .navigationTitle("Gebetszeiten")
    }
}
