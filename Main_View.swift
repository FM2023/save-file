import SwiftUI

struct Main_View: View {
    @State var showMenu = false
    var body: some View {
            let drag = DragGesture()
                .onEnded{
                    if $0.translation.width < -100 {
                        withAnimation {
                            self.showMenu = false
                        }
                    }
                }
            GeometryReader { geometry in
                ZStack(alignment: .trailing) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .trailing))
                    }
                }
                .gesture(drag)
            }
            .navigationBarItems(trailing: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
    }
struct MainView: View {
    @Binding var showMenu: Bool
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("meeting")
                    VStack {
                        Spacer()
                        Text("CREATIVE SOFTWARE/SQUARES")
                        Text("스퀘어스는 다양한 웹기반의 플랫폼 서비스를 제공하고 있습니다.")
                            .font(.system(size: 30))
                            .frame(width: 450, height: 80)
                        Spacer()
                        HStack {
                            Image(systemName: "checkmark")
                            Text("이 사이트는 swiftui 로 제작되었습니다.")
                                .padding()
                        }
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .bold()
                }
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
