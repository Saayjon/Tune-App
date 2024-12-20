//
//  LoginView.swift
//  Tune
//
//  Created by Saayjon Ranjan on 2024-12-18.
//

import SwiftUI

struct LoginView: View{
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showMainView: Bool = false
    @State private var showError: Bool = false
    
    var body: some View{
        if showMainView{
            MainView()
        }else{
            VStack (spacing:20){
                Text("Login to Tune")
                    .italic()
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                VStack(spacing:15){
                    
                    ZStack{
                        if username.isEmpty{
                            Text("Username")
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity,alignment: .center)
                        }
                        TextField("username",text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                            .padding(.horizontal)
                    }
                    ZStack{
                        if password.isEmpty{
                            Text("password")
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                    }
                }
                .padding(.horizontal)
                
                if showError{
                    Text("Invalid credentaials. Please try again.")
                        .foregroundColor(.red)
                        .font(.caption)
                }
                Button(action: handleLogin){
                    Text("Login")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
        
    func handleLogin(){
        if username == "admin" && password == "password" {
            showMainView = true
        } else{
            showError = true
        }
    }
}

struct LoginView_previews: PreviewProvider {
    static var previews: some View{
        LoginView()
    }
}
