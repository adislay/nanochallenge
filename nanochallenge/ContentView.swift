//
//  ContentView.swift
//  nanochallenge
//
//  Created by Adis Di Virgilio on 15/11/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            
            FeedView ()
                .tabItem { VStack {
                    Text ("feed")
                    Image (systemName: "house.fill")
                        .offset(y:-20)
                } }
            Text ("plus")
                .tabItem { Label("create", systemImage: "plus") }
            PersonalView ()
                .tabItem { Label("profile", systemImage: "person.fill") }
            //fix tab bar icons
            
        }
    }
}

#Preview {
    ContentView()
}
