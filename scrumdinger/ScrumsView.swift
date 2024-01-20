//
//  ScrumsView.swift
//  scrumdinger
//
//  Created by Kaio Silveira on 29/12/2023.
//

import SwiftUI

struct ScrumsView : View {
    let scrums: [DailyScrum]

    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ScrumsView_Preview : PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
