//
//  CreatePost.swift
//  SubmitForm
//
//  Created by Steven Chung on 7/8/24.
//

import SwiftUI

struct CreatePost: View {
    
    let userName: String
    
    // variables binded to the form
    @State private var title: String = ""
    @State private var caption: String = ""
    @State private var photo: String = ""
    
    var body: some View {
        
        NavigationView {
            Form {
                Section("Info") {
                    TextField("Title", text: $title)
                    TextField("Caption", text: $caption)
                }
                Section("Attachments") {
                    TextField("Photo", text: $photo)
                }
                
                Button("Submit") {
                    // print form data
                    print("Title: \($title)")
                    print("Caption: \($caption)")
                    print("Photo: \($photo)")
                }
            }
            .navigationTitle(Text("Post Your Meal"))
        }
    }
    
}

#Preview {
    CreatePost(userName: "Steven")
}
