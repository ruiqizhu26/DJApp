//
//  Photo.swift
//  Untitled
//
//  Created by Ruiqi Zhu on 1/8/21.
//

import Foundation
import SwiftUI

var photos: [[Photo]] = construct()

func construct() -> [[Photo]] {
    var photos: [[Photo]] = []
    var row: [Photo] = []
    for i in 0...20 {
        var photo: Photo
        if (i % 3 == 0) {
            photo = Photo(id: i, imageName: "icybay", w: 1, h: 1)
            row.append(photo)
        }
        else if (i % 3 == 1) {
            photo = Photo(id: i, imageName: "hiddenlake", w: 1, h: 1)
            row.append(photo)
        }
        else {
            photo = Photo(id: i, imageName: "umbagog", w: 1, h: 1)
            row.append(photo)
            photos.append(row)
            row = []
        }
    }
    return photos
}

struct Photo: Hashable, Identifiable {
    var id: Int
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    var w: Int
    var h: Int
}


