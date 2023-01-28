import SwiftUI

extension ContentView {
    
    var launchScreenView: some View {
        
        ZStack(alignment: .center) {
            
            LinearGradient(gradient: Gradient(colors: [Color(.yellow), Color(.blue)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            Text("더 넓은 세상으로")
                .foregroundColor(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .bold()
        }
        
    }
    
}

struct launchScreenView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
