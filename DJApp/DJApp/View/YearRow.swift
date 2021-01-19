//
//  YearRow.swift
//  DJApp
//
//  Created by Ruiqi Zhu on 1/18/21.
//

import SwiftUI

struct YearRow: View {
    var month: String
    
    var body: some View {
        Text(month)
    }
}

struct YearRow_Previews: PreviewProvider {
    static var previews: some View {
        YearRow(month: "January")
    }
}
