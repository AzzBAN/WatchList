//
//  HomeView.swift
//  WatchList
//
//  Created by Azhar on 04/02/23.
//

import SwiftUI

struct MainView: View {
    @State var selectedSection: String = "Home"
    
    var body: some View {
        VStack(spacing: 0){
            NavBar()
            ScrollView {
                SectionBar(selectedSection: $selectedSection)
                
                // content here
                if selectedSection == "Home"{
                    Home()
                } else if selectedSection == "Movies" {
                    Movies()
                }
            }
        }
        .padding(.vertical, 0.1)
    }
}



struct SectionBar: View {
    
    let section: [String] = ["Home", "Movies", "Streaming & TV", "Notifications", "awwfw", "awdadawd"]
    
    @Binding var selectedSection: String
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(section, id: \.self) { section in
                    if selectedSection == section {
                        Button {
                            selectedSection = section
                        } label: {
                            Text(section)
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
                        }
                    } else {
                        Button {
                            selectedSection = section
                        } label: {
                            Text(section)
                                .foregroundColor(.black.opacity(0.5))
                                .fontWeight(.medium)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 7)
        }
        .background(Color(#colorLiteral(red: 0.8196078431, green: 0.7882352941, blue: 0.6980392157, alpha: 1)))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Background()
            MainView()
        }
    }
}
