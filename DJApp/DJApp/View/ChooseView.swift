//
//  ChooseView.swift
//  DJApp
//
//  Created by Ruiqi Zhu on 1/13/21.
//

import SwiftUI

struct ChooseView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: YearView(),
                    label: {
                        Text("YearView")
                    })
                NavigationLink(
                    destination: PhotoSelection(),
                    label: {
                        Text("PhotoSelection")
                    })
                NavigationLink(
                    destination: PhotoCollection(),
                    label: {
                        Text("PhotoCollection")
                })
            }
        }
    }
}

struct ChooseView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseView()
    }
}
