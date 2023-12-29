//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by Kaio Silveira on 29/12/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
