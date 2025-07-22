//
//  EventView.swift
//  BaitulMukarram
//
//  Created by Annas Hossain on 22.07.25.
//
import SwiftUI

struct EventView: View {
    var body: some View {
        VStack {
            Text("Aktuelle Events")
                .font(.title)
                .padding()

            List {
                LazyVStack(spacing: 10) {
                    Text("Jeden Ramadan wird Iftar Essen ausgegeben sowie die Taraweeh Gebete gehalten.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.2)))
                        .padding(.horizontal, 20)
                    Text("Es wird auch über die App und unserer Webseite, sowie an Qutbas Auskunft zu Eid Gebetszeiten und ähnlichen Anlässen ausgegeben.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.2)))
                        .padding(.horizontal, 20)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.2)))
                        .padding(.horizontal, 20)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.2)))
                        .padding(.horizontal, 20)
                }
            }
            
            
        }
        .navigationTitle("Event")
    }
}

#Preview {
    EventView()
}


