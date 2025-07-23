//
//  DuaView.swift
//  BaitulMukarram
//
//  Created by Annas Hossain on 22.07.25.
//
import SwiftUI

struct DuaView: View {
    var body: some View {
        VStack {
            Text("Dua")
                .font(.title)
                .padding()
            List{
                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(0..<5) { index in
                            //Hier Icons machen statt Text
                            Text("Die Baitul Mukarram Moschee ist ein Ort des Gebets und der Gemeinschaft. Hier erfährst du mehr über unsere Geschichte und unsere Arbeit.")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.2)))
                                .padding(.horizontal, 20)
                        }
                    }
                }
            }

            
            
        }
        .navigationTitle("Dua")
    }
}

#Preview {
    DuaView()
}
