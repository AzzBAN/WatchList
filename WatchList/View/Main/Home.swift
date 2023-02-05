//
//  Home.swift
//  WatchList
//
//  Created by Azhar on 06/02/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack {
                    Rectangle()
                        .fill(.black).opacity(0.2)
                        .frame(width: 393, height: 250)
                    Rectangle()
                        .fill(.black).opacity(0.2)
                        .frame(width: 393, height: 250)
                    Rectangle()
                        .fill(.black).opacity(0.2)
                        .frame(width: 393, height: 250)
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().padding().previewLayout(.sizeThatFits)
    }
}
