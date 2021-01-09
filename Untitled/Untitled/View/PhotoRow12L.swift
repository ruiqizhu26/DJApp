//
//  PhotoRow12L.swift
//  Untitled
//
//  Created by Ruiqi Zhu on 1/8/21.
//  Next step: Figure out 1row multi-sizing implementation

import SwiftUI

struct PhotoRow12L: View {
    var size = UIScreen.main.bounds.width / 3.5
    var row: [Photo]
    
    var body: some View {
        HStack {
            ForEach(row) { photo in
                if (photo.w == 1) {
                    photo.image
                        .resizable()
                        .frame(width: size, height: size)
                }
                else {
                    photo.image
                        .resizable()
                        .frame(width: size * 2, height: size)
                }
            }
        }
    }
}

struct PhotoRow12L_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRow12L(row: photos[0])
    }
}
