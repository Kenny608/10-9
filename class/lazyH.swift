//
//  lazyH.swift
//  class
//
//  Created by Kenny Luchau on 10/9/23.
//

import SwiftUI

struct lazyH: View {
    let data = (1...8).map { "Item \($0)" }
    
    let columns = [
        GridItem()
    ]
    
    var body: some View {
//        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Label(item , systemImage: "square")
                }
            }
            .padding(.horizontal)
//        }
        .frame(maxHeight: 300)
    }
}
