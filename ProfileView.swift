//
//  ProfileView.swift
//  Tune
//
//  Created by Saayjon Ranjan on 2024-12-19.
//

import Foundation
import SwiftUI

struct ProfileView: View{
    @Binding var isLoggedIn: Bool
    var body: some View{
        VStack{
            Text("Profile")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text("This is the profile screen")
                .padding()
            
            Spacer()
            
            Button(action: {
                isLoggedIn = false
                UserDefaults.standard.set(false, forKey: "isLoggedIn")
            }){
                Text("Logout")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.bottom,20)
        }
        .padding()
    }
}







struct ProfileView_Previews: PreviewProvider{
    static var previews: some View{
        ProfileView(isLoggedIn: .constant(true))
    }
}
