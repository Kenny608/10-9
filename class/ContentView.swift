//
//  ContentView.swift
//  class
//
//  Created by Kenny Luchau on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            lazyV()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Horizontal")
                }
            lazyH()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Verticle")
                }
            userUpload()
                .tabItem {
                    Image(systemName: "3.square")
                    Text("User Upload")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
