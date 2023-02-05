//
//  LoginView.swift
//  WatchList
//
//  Created by Azhar on 31/01/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            Spacer()
            
            Image("WLicon1")
                .resizable()
                .frame(width: 325.0, height: 125)
            
            Spacer(minLength: 150)
            
            VStack(spacing: 15){
                TextField("Username",text: $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.horizontal, 20)
                    .frame(width: 240, height: 45)
                    .background(Color.white)
                    .cornerRadius(7)
                    .overlay {
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.black, lineWidth: 1)
                    }
                
                SecureField("Password",text: $password)
                    .padding(.horizontal, 20)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .frame(width: 240, height: 45)
                    .background(Color.white)
                    .cornerRadius(7)
                    .overlay {
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.black, lineWidth: 1)
                            .overlay(alignment: .trailing) {
                                Image(systemName: "eye.slash")
                                    .padding(.trailing, 10)
                            }
                    }
                
                Button {
                    // put the action here
                } label: {
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(10)
                        .frame(width: 77, height: 29)
                        .overlay {
                            Text("Login")
                                .foregroundColor(.black)
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        }
                }
                
                Divider()
                    .frame(width: 230, height: 1)
                    .overlay(Color.black)
                    
                HStack(spacing: 20) {
                    Circle()
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: 30)
                        .background(Circle().fill(.white))
                        .overlay(
                            Image("google.icon")
                        )
                    Circle()
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: 30)
                        .background(Circle().fill(.white))
                        .overlay {
                            Image(systemName: "apple.logo")
                        }
                }
            }
            
            Spacer(minLength: 200)
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Background()
            LoginView()
        }
    }
}
