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
        GridItem(.flexible(minimum: 40, maximum: 80))
    ]
    
    var body: some View {
//        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(data, id: \.self) { item in
                    Label(item , systemImage: "square")
                }
            }
            .padding(.horizontal)
//        }
        .frame(maxHeight: 300)
    }
}
