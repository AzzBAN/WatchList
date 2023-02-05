//
//  LandingView.swift
//  WatchList
//
//  Created by Azhar on 28/01/23.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack {
            Image("WLicon1")
                .resizable()
                .frame(width: 325.0, height: 125)
                .padding(.bottom, 12)
            Text("your watch assistant for your moment")
                .font(.footnote)
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Background()
            SplashScreenView()
        }
    }
}
