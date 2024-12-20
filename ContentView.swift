//
//  ContentView.swift
//  Tune
//
//  Created by Saayjon Ranjan on 2024-12-18.
//

import SwiftUI

struct ContentView : View {
    @State private var showNextView = false
    
    var body : some View{
        Group{
            if showNextView{
                LoginView()
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

struct ContentView_previews : PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
