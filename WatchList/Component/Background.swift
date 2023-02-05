//
//  Background.swift
//  WatchList
//
//  Created by Azhar on 05/02/23.
//

import SwiftUI

struct Background: View {
    var body: some View {
        Color("BackgroundColor")
            .ignoresSafeArea(.all)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
