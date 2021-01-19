//
//  PhotoSelection.swift
//  DJApp
//
//  Created by Ruiqi Zhu on 1/13/21.
//

import SwiftUI

struct PhotoSelection: View {
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    
    let imageWidth = UIScreen.main.bounds.width * 0.9
    
    var body: some View {
        NavigationView {
            VStack {
                let ratio = self.image.size.height / self.image.size.width
                
                Image(uiImage: self.image)
                    .resizable()
                    .frame(width: imageWidth, height: ratio * imageWidth, alignment: .center)
                
                Spacer()
                
                Button(action: {
                    self.isShowPhotoLibrary = true
                }) {
                    HStack {
                        Image(systemName: "photo")
                            .font(.system(size: 20))
                        Text("Photo library")
                            .font(.headline)
                    }
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(.horizontal)
                }
            }
            .sheet(isPresented: $isShowPhotoLibrary) {
                ImagePicker(selectedImage: self.$image, sourceType: .photoLibrary)
            }
        }
        .navigationTitle("Trump Tower")
        .navigationBarItems(trailing:
            Button(action: {
                print("Clicked")
                let photo = Photo(id: photo_id, uiImage: self.image, w: 1, h: 1)
                addToPhotos(photo: photo)
            }) {
                Image(systemName: "checkmark.circle")
                    .imageScale(.large)
            }
        )
    }
}

struct PhotoSelection_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSelection()
    }
}
