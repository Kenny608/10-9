//
//  userUpload.swift
//  class
//
//  Created by Kenny Luchau on 10/9/23.
//

// Unsure how to implement I will come back to this

import SwiftUI

struct userUpload: View {
    let items = 1...8
    
    let rows = [
        GridItem()
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
        Button{
            
        }label: {
//            Label("Just Vibing", image: )
//                .font(.largeTitle)
//                .foregroundColor(.purple)
//                .padding()
//                .border(Color.yellow, width: 8)
        }
        
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(items, id: \.self) { item in
                  Label("Item \(item)", systemImage: "\(item).circle.fill") // I need to fix this
                }
            }
            .frame(height: 150)
        }
    }
}

struct userUpload_Previews: PreviewProvider {
    static var previews: some View {
        userUpload()
    }
}
