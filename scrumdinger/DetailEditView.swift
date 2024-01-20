//
//  DetailEditView.swift
//  scrumdinger
//
//  Created by Kaio Silveira on 20/01/2024.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum

    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(
                        value: $scrum.lengthInMinutesAsDouble,
                        in: 5...30,
                        step: 1
                    ) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
