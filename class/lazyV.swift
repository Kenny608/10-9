//
//  lazyV.swift
//  class
//
//  Created by Kenny Luchau on 10/9/23.
//

import SwiftUI

struct lazyV: View {
    let items = 1...8
    
    let rows = [
        GridItem()
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(items, id: \.self) { item in
                    Label("Item \(item)", systemImage: "\(item).circle.fill") // I need to fix this
                }
            }
            .frame(height: 150)
        }
    }
}

struct lazyV_Previews: PreviewProvider {
    static var previews: some View {
        lazyV()
    }
}
