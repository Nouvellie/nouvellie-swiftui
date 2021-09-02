import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                ScrollView {
                    NouveHomeNavigation()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.colorNouveDarkBlack)
                    
                    Image(systemName: "textbox.he")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.colorNouveHardRed)
                        .padding(.top)
                        .frame(width: 240, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    Text("Nouvellie APP")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.colorNouveHardRed)
                    
                    Spacer()
                }
            }
            .background(Color.colorNouveBlack.ignoresSafeArea(.all, edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
