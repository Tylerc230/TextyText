//
//  ContentView.swift
//  iOS-Project
//
//  Created by Tyler Casselman on 2/17/20.
//  Copyright © 2020 13bit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Normal String")
            Text("Hi, I'm \("red", color: .red)")
            Text("Now I'm \("blue", blueItalic(_:))")
        }
    }
}

func blueItalic(_ text: Text) -> Text {
    text
        .foregroundColor(.blue)
        .italic()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
