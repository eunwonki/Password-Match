import SwiftUI
import Combine

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State var buttonDisabled = true

    var body: some View {
        VStack {
            HStack {
                Text("Password")
                    .frame(width: 200)
                SecureField("Password",
                            text: $viewModel.passwordInput)
            }
            HStack {
                Text("Password Check")
                    .frame(width: 200)
                SecureField("Password Check",
                            text: $viewModel.passwordConfirmInput)
            }
            Button("Check", action: action)
                .disabled(buttonDisabled)
        }
        .padding()
        .onAppear(perform: onAppear)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
