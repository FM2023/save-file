import SwiftUI

struct Main_View: View {
    @State var showMenu = false
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("meeting")
                        .resizable()
                    VStack {
                        Text("CREATIVE SOFTWARE / SQUARES")
                            .foregroundColor(.white)
                            .font(.subheadline)
                        Text("스퀘어스는 다양한 웹기반의 플랫폼 서비스를 제공하고 있습니다.")
                            .frame(width: 400)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                            .padding()
                    }
                }
            }
            ZStack {
                Image("meeting")
            }.toolbar {
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                                    }
                }, label: {
                    Image(systemName: "line.horizontal.3")
                                        .imageScale(.large)
                })
            }
        }
    }
}
struct Main_View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Main_View()
        }
    }
}
