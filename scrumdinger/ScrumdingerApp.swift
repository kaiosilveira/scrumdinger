//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by Kaio Silveira on 29/12/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
