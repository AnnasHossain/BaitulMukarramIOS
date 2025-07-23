import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack {
            Color.clear
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                PrayerView()
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("Prayer")
                    }
                
                CalenderView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
                
                DuaView()
                    .tabItem {
                        Image(systemName: "book")
                        Text("Duas")
                    }
                
                EventView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Events")
                    }
                
                // ToDO weitere Seite überlegen die angzeigt werden sollte
                AboutView()
                    .tabItem {
                        Image(systemName: "info.circle.fill")
                        Text("About")
                    }
                ImpressumView()
                    .tabItem {
                        Image(systemName: "doc.plaintext.fill")
                        Text("Tasbih")
                    }
                
                DatenschutzView()
                    .tabItem {
                        Image(systemName: "lock.shield.fill")
                        Text("Datenschutz")
                    }
                
                ImpressumView()
                    .tabItem {
                        Image(systemName: "envelope.badge.person.crop")
                        Text("Kontaktiere uns")
                    }
            }
        }
    }
}

#Preview {
    MainTabView()
}
