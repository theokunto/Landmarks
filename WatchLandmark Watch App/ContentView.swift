//
//  ContentView.swift
//  WatchLandmark Watch App
//
//  Created by Theofilus Kuntolukito on 03/10/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                            _ = try? await center.requestAuthorization(
                                options: [.alert, .sound, .badge]
                            )
                        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
