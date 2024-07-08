//
//  ContentView.swift
//  SubmitForm
//
//  Created by Steven Chung on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "fork.knife")
                    .imageScale(.large)
                Text("Hello, Foodie!")
                NavigationLink("Add meal", value: "Bob")
            }.navigationDestination(for: String.self, destination: { value in
                VStack {
                    CreatePost(userName: value)
                }
                
            })
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
