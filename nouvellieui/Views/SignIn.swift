//
//  SignIn.swift
//  nouvellieui
//
//  Created by Rocuant Roberto on 02-09-21.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var nouveUsername:String = ""
    @State var nouvePassword:String = ""
    
    var body: some View {
//        NavigationView {
            GeometryReader { geometry in
                ZStack {
                    Color.colorNouveBlack
                        .ignoresSafeArea()
                    ScrollView {
                        VStack {
                            Spacer()
                            Form {
                                HStack {
                                    Image(systemName: "person")
                                    TextField("Username", text: $nouveUsername)
                                }
                                HStack {
                                    Image(systemName: "lock.fill")
                                    TextField("Password", text: $nouvePassword)
                                }
                                
                            }.frame(width: 300, height: 150)
                            Spacer()
                            
                        } // vstack.
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    } // scroll.
                } // zstack.
                .foregroundColor(Color.colorNouveWhite)
            } // geo.
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Text("Sign Up"),
                trailing: Button(
                    "Home",
                    action: { self.presentationMode.wrappedValue.dismiss() }
                ))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "textbox.he")
                        Text("Sign In").font(.headline)
                    }.foregroundColor(Color.colorNouveHardRed)
                }
            }
            .navigationBarColor(uicolorNouveDarkBlack)
            .foregroundColor(Color.colorNouveWhite)
//        } // nav.
    } // body.
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
