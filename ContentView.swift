import SwiftUI

struct ContentView: View {
    
    @State var isLoading: Bool = true
    
    var body: some View {
        ZStack {
            
            Button(action: {
                
            }, label: {
                Image("logo")
                    .frame(maxWidth: .infinity)
            })
            
            if isLoading {
                launchScreenView.transition(.opacity).zIndex(1)
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation { isLoading.toggle() }
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
