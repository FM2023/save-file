import SwiftUI

struct MenuView: View {
    @State private var showingsheet = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "person")
                        .foregroundColor(.gray)
                    .imageScale(.large)
                    Text("About")
                        .foregroundColor(.gray)
                        .font(.headline)
                })
            }
            .padding(.top, 100)
            
            NavigationLink(destination: Product_View(), label: {
                HStack {
                    Image(systemName: "tray.2.fill")
                        .foregroundColor(.gray)
                    .imageScale(.large)
                    Text("Product")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
            })
            .padding(.top, 30)
            HStack {
                Button(action: {
                    if let yourURL = URL(string: "https://www.jobkorea.co.kr/Recruit/Co_Read/Recruit/C/squaresinc") {
                            UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                        }
                }, label: {
                    Image(systemName: "gear")
                        .foregroundColor(.gray)
                    .imageScale(.large)
                    Text("Recruite")
                        .foregroundColor(.gray)
                        .font(.headline)
                })
            }
            .padding(.top, 30)
            HStack {
                Button(action: {
                    self.showingsheet.toggle()
                }, label: {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    .imageScale(.large)
                    Text("Contact")
                        .foregroundColor(.gray)
                        .font(.headline)
                })
                .sheet(isPresented: $showingsheet) {
                    Contact_View()
                }
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment:.trailing)
        .background(Color(red:40/255, green: 40/255, blue: 50/255))
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView()
        }
    }
}
