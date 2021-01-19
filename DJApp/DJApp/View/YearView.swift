//
//  YearView.swift
//  DJApp
//
//  Created by Ruiqi Zhu on 1/18/21.
//

import SwiftUI

struct YearView: View {
    var months: [String] = ["January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    var body: some View {
        List(months, id: \.self) { month in
            YearRow(month: month)
        }
    }
}

struct YearView_Previews: PreviewProvider {
    static var previews: some View {
        YearView()
    }
}
