//
//  NouveNavigation.swift
//  nouvellieui
//
//  Created by Rocuant Roberto on 02-09-21.
//

import SwiftUI

struct NouveHomeNavigation: View {
    var body: some View {
        
        HStack {
            Text("Sign In")
                .bold()
                .foregroundColor(Color.colorNouveWhite)
            Spacer()
            Image(systemName: "textbox.he")
                .foregroundColor(Color.colorNouveHardRed)
            Text("Home")
                .bold()
                .foregroundColor(Color.colorNouveHardRed)
            Spacer()
            Text("Menu")
                .bold()
                .foregroundColor(Color.colorNouveWhite)
        }
    }
}



struct NouveFooter: View {
    var body: some View {
        
        HStack {
            Spacer()
            
            Link("www.nouvellie.pro", destination: URL(string: "https://www.google.cl")!)
                .padding(.leading, 40.0)
                .foregroundColor(Color.colorNouveWhite)
                
            
            Spacer()
            
            Text("v0.1.0")
                .bold()
                .foregroundColor(Color.colorNouveHardRed)
        }
    }
}

extension Color {
    static let colorNouveHardRed = Color(red: 250 / 255, green: 7 / 255, blue: 59 / 255)
    static let colorNouveLightRed = Color(red: 221 / 255, green: 54 / 255, blue: 77 / 255)
    static let colorNouveDarkBlack = Color(red: 7 / 255, green: 9 / 255, blue: 14 / 255)
    static let colorNouveBlack = Color(red: 12 / 255, green: 14 / 255, blue: 19 / 255)
    static let colorNouveWhite = Color(red: 226 / 255, green: 228 / 255, blue: 233 / 255)
}


struct NouveNavigation_Previews: PreviewProvider {
    static var previews: some View {
        NouveFooter()
    }
}
