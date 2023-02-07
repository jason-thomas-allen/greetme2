//
//  ContentView.swift
//  GreetMe
//
//  Created by Jason Allen on 7/2/2023.
//

import SwiftUI

public struct ContentView: View {
    
    public init() {}
    
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

public struct ContentView_Previews: PreviewProvider {
    public static var previews: some View {
        ContentView()
    }
}
