//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Cory Sebastian on 5/23/21.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5.0, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
                
                
                
            }
            .accessibilityElement(children: .ignore )   // This allows for voice over to devliver the most useful content to the user and not to read each label twice.
            .accessibilityLabel(Text("Time remaining"))
            .accessibilityValue(Text("10 minutes"))
            Circle()
                .strokeBorder(lineWidth: 24.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("Speaker 1 of 3")
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel(Text("Next speaker"))
            }
        }
        .padding()
        .background(Color.gray)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MeetingView()
        }
    }
}
