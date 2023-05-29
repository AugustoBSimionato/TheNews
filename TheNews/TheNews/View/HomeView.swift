//
//  ContentView.swift
//  TheNews
//
//  Created by Augusto Simionato on 28/05/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView {
            NewsView()
                .tabItem {
                    Label("News", systemImage: "newspaper.circle.fill")
                }
                .tag(0)
//            WatchLaterView()
//                .tabItem {
//                    Label("Watch later", systemImage: "arrow.counterclockwise.circle.fill")
//                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.circle.fill")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
