
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            AboutView()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }
        }
    }
}

#Preview {
    MainTabView()
}
