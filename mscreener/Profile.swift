//
//  Profile.swift
//  mscreener
//
//  Created by Adnan Cobanoglu on 13.04.2023.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            Image(systemName: "person.fill").font(.largeTitle).foregroundColor(.white)
            Text("Profile View").foregroundColor(.white).padding(.top)
            Spacer()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
