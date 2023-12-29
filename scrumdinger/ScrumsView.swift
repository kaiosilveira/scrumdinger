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
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

struct ScrumsView_Preview : PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
