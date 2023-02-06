import SwiftUI

struct Contact_View: View {
    @State private var name: String = ""
    @State private var phonenumber: String = ""
    @State private var email: String = ""
    @State private var subtitle: String = ""
    @State private var text: String = ""
    var body: some View {
        VStack {
            Text("Contact")
                .font(.largeTitle)
                .bold()
            Text("스퀘어스에 궁금한 점이 있으면 문의주세요")
                .font(.footnote)
            TextField("제목", text: $subtitle)
                .padding()
                .textFieldStyle(.roundedBorder)
            TextField("성함", text: $name)
                .padding()
                .textFieldStyle(.roundedBorder)
            TextField("전화번호", text: $phonenumber)
                .padding()
                .textFieldStyle(.roundedBorder)
            TextField("이메일", text: $email)
                .padding()
                .textFieldStyle(.roundedBorder)
            TextEditor(text: $text)
                .padding()
                .foregroundColor(.black)
                .lineSpacing(5)
                .frame(maxWidth: 400, maxHeight: 300)
                .border(Color.gray, width: 2)
            Button(action: {
                
            }, label: {
                HStack {
                    Text("문의하기")
                    Image(systemName: "envelope")
                }
                .frame(width: 150, height: 60)
                .background(.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
            .font(.headline)
            })
        }
    }
}

struct Contact_View_Previews: PreviewProvider {
    static var previews: some View {
            Contact_View()
    }
}
