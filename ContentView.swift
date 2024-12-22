//
//  ContentView.swift
//  Tune
//
//  Created by Saayjon Ranjan on 2024-12-18.
//

import SwiftUI

struct ContentView : View {
    @Binding var isLoggedIn: Bool
    @State private var showNextView = false
    
    var body : some View{
        Group{
            if showNextView{
                if isLoggedIn{
                    MainView(isLoggedIn: $isLoggedIn)
                }else{
                    LoginView(isLoggedIn: $isLoggedIn)
                }
            }else{
                VStack {
                    Text ("Tune")
                        .italic()
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.black)
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        showNextView = true
                    }
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isLoggedIn: .constant(false)) 
    }
}
