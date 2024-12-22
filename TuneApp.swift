//
//  TuneApp.swift
//  Tune
//
//  Created by Saayjon Ranjan on 2024-12-18.
//

import SwiftUI

@main
struct TuneApp: App {
    @State private var isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
    @State private var showLoadingScreen = true
    
    var body: some Scene {
        WindowGroup {
            if showLoadingScreen{
                ContentView(isLoggedIn: $isLoggedIn)
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                            showLoadingScreen = false
                        }
                    }
            }else{
                if isLoggedIn{
                    MainView(isLoggedIn : $isLoggedIn)
                } else{
                    LoginView(isLoggedIn: $isLoggedIn)
                }
            }
        }
    }
}
