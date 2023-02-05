//
//  NavBar.swift
//  WatchList
//
//  Created by Azhar on 06/02/23.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        HStack(alignment: .center){
            Image("WLicon2")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 25, height: 25)
                .padding(.trailing, 10)
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 25, height: 25)
        }
        .padding()
        .background(
            Rectangle()
                .fill(Color("BackgroundColor"))
                .shadow(radius: 2, y: 3)
        )
        .zIndex(1)
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar().padding().previewLayout(.sizeThatFits)
    }
}
