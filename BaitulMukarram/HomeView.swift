import SwiftUI

struct HomeView: View {
    let sliderImages = [
        "pexels-neukoelln-baitul-mukarram-front.png",
        "pexels-neukoelln-baitul-mukarram.jpeg",
        "pexels-neukoelln-baitul-mukarram-second-room.jpeg",
        "moschee-draussen.png"
    ]
    var body: some View {
        VStack {
            Text("Baitul Mukarram Masjid Berlin")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Image("moschee_logo.jpeg")
                .resizable()
                .scaledToFit()
                .frame(height: 50)
                .cornerRadius(90)
                .padding(.horizontal)
            // ToDo: Größe der Inhalte der Kacheln anpassen
            List {
                VStack{
                    TabView {
                        ForEach(sliderImages, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 250)
                                .clipped()
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                    }
                    .frame(height: 250)
                    .tabViewStyle(PageTabViewStyle())
                    .cornerRadius(10)
                    //Link("Zur Moschee in Google Maps", destination: URL(string: "https://maps.app.goo.gl/Y2V87o6D98Wm8kTm7")!)
                    Text("Zur Moschee in Google Maps")
                        .foregroundColor(.yellow)
                        .underline()
                        .onTapGesture {
                            //Test print("Link wurde getappt")
                            if let url = URL(string: "https://maps.app.goo.gl/Y2V87o6D98Wm8kTm7") {
                                UIApplication.shared.open(url)
                            }
                        }
                    VStack(spacing: 10) {
                        HStack {
                            // clock -> clock.fill -> clock.badge.exclamationmark.fill -> clock.badge.checkmark.fill
                            VStack (alignment: .leading){
                                HStack {
                                    Image(systemName: "clock.fill")
                                        .foregroundColor(.accent)
                                    Text("1st Freitagsgebet:")
                                        .font(.headline)
                                    Text("13:30")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Text("(bengalische Freitagspredigt)")
                                    .font(.caption)
                                    
                            }
                        }
                        .padding()
                        .background(Color.secondary.opacity(0.1))
                        .cornerRadius(8)
                        
                        HStack {
                            // clock -> clock.fill -> clock.badge.exclamationmark.fill -> clock.badge.checkmark.fill
                            VStack (alignment: .leading){
                                HStack {
                                    Image(systemName: "clock.fill")
                                        .foregroundColor(.accent)
                                    Text("2nd Freitagsgebet:")
                                        .font(.headline)
                                    Text("14:30")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Text("(arabisch & deutsche Freitagspredigt)")
                                    .font(.caption)
                            }
                        }
                        .padding()
                        .background(Color.secondary.opacity(0.1))
                        .cornerRadius(8)
                        
                    }
                }
                .padding()
                
                Text("Wir bieten regelmäßige Gebetszeiten, Bildungsprogramme sowie soziale und kulturelle Veranstaltungen an.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
            
                
            }//Liste hier Ende

            
            
        }//VStack hier Ende
        .navigationTitle("Home")
    }
}




#Preview {
    HomeView()
}
