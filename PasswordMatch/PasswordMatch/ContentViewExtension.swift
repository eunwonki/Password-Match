import Foundation

extension ContentView {
    func onAppear() {
        viewModel.isMatchpasswordInput
            .sink(receiveValue: { isMatch in
                buttonDisabled = !isMatch
            }).store(in: &viewModel.disposables)
    }
    
    func action() {
        print("action")
    }
}
