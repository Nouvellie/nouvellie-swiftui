////
////  NouveNavigation.swift
////  nouvellieui
////
////  Created by Rocuant Roberto on 02-09-21.
////
//
import UIKit
import SwiftUI
//
//struct NouveHomeNavigation: View {
//
//    @State private var isPresented = false
//
//    var body: some View {
//
//        HStack {
//            Button("Sign In!") {
//                        isPresented.toggle()
//                    }.fullScreenCover(isPresented: $isPresented, content: SignIn.init)
//            Spacer()
//            Image(systemName: "textbox.he")
//                .foregroundColor(Color.colorNouveHardRed)
//            Text("Home")
//                .bold()
//                .foregroundColor(Color.colorNouveHardRed)
//            Spacer()
//            Text("Menu")
//                .bold()
//                .foregroundColor(Color.colorNouveWhite)
//        }
//    }
//}
//
//struct NouveSignInNavigation: View {
//    var body: some View {
//
//        HStack {
//            Text("Sign Up")
//                .bold()
//                .foregroundColor(Color.colorNouveWhite)
//            Spacer()
//            Image(systemName: "textbox.he")
//                .foregroundColor(Color.colorNouveHardRed)
//            Text("Sign In")
//                .bold()
//                .foregroundColor(Color.colorNouveHardRed)
//            Spacer()
//            Text("Home")
//                .bold()
//                .foregroundColor(Color.colorNouveWhite)
//        }
//    }
//}
//
//
//
//struct NouveFooter: View {
//    var body: some View {
//
//        HStack {
//            Spacer()
//
//            Link("www.nouvellie.pro", destination: URL(string: "https://www.google.cl")!)
//                .padding(.leading, 40.0)
//                .foregroundColor(Color.colorNouveWhite)
//
//
//            Spacer()
//
//            Text("v0.1.0")
//                .bold()
//                .foregroundColor(Color.colorNouveHardRed)
//        }
//    }
//}
//
let uicolorNouveDarkBlack = UIColor(red: 7/255, green: 9/255, blue: 14/255, alpha: 1)

extension Color {
    static let colorNouveHardRed = Color(red: 250 / 255, green: 7 / 255, blue: 59 / 255)
    static let colorNouveLightRed = Color(red: 221 / 255, green: 54 / 255, blue: 77 / 255)
    static let colorNouveDarkBlack = Color(red: 7 / 255, green: 9 / 255, blue: 14 / 255)
    static let colorNouveBlack = Color(red: 12 / 255, green: 14 / 255, blue: 19 / 255)
    static let colorNouveWhite = Color(red: 226 / 255, green: 228 / 255, blue: 233 / 255)
}
//
//
//struct NouveNavigation_Previews: PreviewProvider {
//    static var previews: some View {
//        NouveFooter()
//    }
//}
//
//
struct NavigationBarModifier: ViewModifier {

    var backgroundColor: UIColor?

    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white

    }

    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

extension View {

    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }

}
