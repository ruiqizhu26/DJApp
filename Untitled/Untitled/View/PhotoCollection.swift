//
//  PhotoCollection.swift
//  Untitled
//
//  Created by Ruiqi Zhu on 1/8/21.
//

import SwiftUI

struct PhotoCollection: View {
    var body: some View {
        List(photos, id: \.self) { row in
            PhotoRow13(row: row)
        }
    }
}

struct PhotoCollection_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PhotoCollection()
        }
    }
}
