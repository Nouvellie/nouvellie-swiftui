import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            GeometryReader { geometry in
                ZStack {
                    Color.colorNouveBlack
                        .ignoresSafeArea()
                    ScrollView {
                        VStack {
                            VStack {
                                Image(systemName: "textbox.he")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 240, height: 128)
                                Text("Nouvellie")
                                    .font(.largeTitle)
                            }.padding(.top)
                            .foregroundColor(Color.colorNouveHardRed)
                            
                            Spacer()
                            
                            Text("WELCOME!")
                                .font(.largeTitle)
                            
                            Spacer()
                            
//                            HStack {
//                                Spacer()
//                                Text("v0.1.0")
//                                    .bold()
//                            }.padding(.horizontal, 15)
                            .foregroundColor(Color.colorNouveHardRed)
                            
                        } // vstack.
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    } // scroll.
                } // zstack.
                .foregroundColor(Color.colorNouveWhite)
            } // geo.
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: NavigationLink("Sign In", destination: SignInView().navigationBarBackButtonHidden(true)),
                trailing: Text("Menu"))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "textbox.he")
                        Text("Home").font(.headline)
                    }.foregroundColor(Color.colorNouveHardRed)
                }
            }
            .navigationBarColor(uicolorNouveDarkBlack)
            .foregroundColor(Color.colorNouveWhite)
        } // nav.
    } // body.
} // view.

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
