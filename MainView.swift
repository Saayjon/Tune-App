//
//  MainView.swift
//  Tune
//
//  Created by Saayjon Ranjan on 2024-12-19.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State private var songName: String = ""
    @State private var showProfileView: Bool = false
    
    var body: some View{
        NavigationView{
            VStack(spacing:20){
                Text("Welcome to Tune")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Share Your Song of the Day!")
                    .font(.headline)
                
                TextField("Enter Song Name" , text: $songName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button(action: shareSong){
                    Text("Share Song")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
                
                NavigationLink(destination: ProfileView(), isActive: $showProfileView){
                    EmptyView()
                }
                
                HStack{
                    Spacer()
                    Button(action: {
                        showProfileView = true
                    }){
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                            .shadow(radius: 5)
                    }
                    .padding()
                }
                
            }
            .padding()
            .navigationTitle("Main")
            .navigationDestination(for: String.self){ value in
                if value == "Profile"{
                    ProfileView()
                }
            }
        }
    }
    func shareSong(){
        print("Shared song: \(songName)")
    }
}


struct MainView_previews: PreviewProvider{
    static var previews: some View{
        MainView()
    }
}
