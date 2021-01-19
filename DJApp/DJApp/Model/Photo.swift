//
//  Photo.swift
//  DJApp
//
//  Created by Ruiqi Zhu on 1/8/21.
//

import Foundation
import SwiftUI

var photo_id: Int = 0
var photos: [[Photo]] = construct()
var plusPhoto = Photo(id: 0, systemName: "plus.circle", w: 1, h: 1)

func construct() -> [[Photo]] {
    let photos: [[Photo]] = [[plusPhoto]]
    return photos
}

func addToPhotos(photo: Photo) {
    if photos[photos.count - 1].count == 3 {
        photos[photos.count - 1][2] = photo
        var newRow: [Photo] = []
        newRow.append(plusPhoto)
        photos.append(newRow)
    }
    else {
        print(photos[photos.count - 1].endIndex - 1)
        print(photos[photos.count - 1])
        photos[photos.count - 1].insert(photo, at: photos[photos.count - 1].endIndex - 1)
    }
    photo_id += 1
    plusPhoto.id += 1 // Entry Jan 18, 2021: It appears that plusPhoto.id can never be changed for some reason...
    print(plusPhoto.id)
    print(photos[photos.count - 1])
}

struct Photo: Hashable, Identifiable {
    var id: Int
    var month: Int = -1
    var day: Int = -1
    var imageName: String?
    var systemName: String?
    var uiImage: UIImage?
    var image: Image {
        if (imageName != nil) {
            return Image(imageName!)
        }
        else if (systemName != nil) {
            return Image(systemName: systemName!)
        }
        else {
            return Image(uiImage: uiImage!)
        }
    }
    var w: Int
    var h: Int
}


