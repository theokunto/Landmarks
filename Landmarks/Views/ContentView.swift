//
//  ContentView.swift
//  Landmarks
//
//  Created by Theofilus Kuntolukito on 01/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    enum Tab{
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem {
                    Label("Featured",systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("List",systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
