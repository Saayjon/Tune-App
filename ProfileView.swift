//
//  ProfileView.swift
//  Tune
//
//  Created by Saayjon Ranjan on 2024-12-19.
//

import Foundation
import SwiftUI

struct ProfileView: View{
    var body: some View{
        VStack{
            Text("Profile")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text("This is the profile screen")
                .padding()
            
            Spacer()
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}







struct ProfileView_Previews: PreviewProvider{
    static var previews: some View{
        ProfileView()
    }
}
