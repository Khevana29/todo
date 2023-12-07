//
//  ListROwView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-03.
//

import SwiftUI

struct ListRowView: View {
    let title : String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}
#Preview {
    ListRowView(title: "This is not enough !")
}
