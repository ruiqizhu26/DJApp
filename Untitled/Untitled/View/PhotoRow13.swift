//
//  PhotoRow13.swift
//  Untitled
//
//  Created by Ruiqi Zhu on 1/8/21.
//

import SwiftUI

struct PhotoRow13: View {
    var size = UIScreen.main.bounds.width / 3.5
    var row: [Photo]
    
    var body: some View {
        HStack {
            ForEach(row) { photo in
                photo.image
                    .resizable()
                    .frame(width: size, height: size)
            }
        }
    }
}

struct PhotoRow13_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRow13(row: photos[0])
    }
}
