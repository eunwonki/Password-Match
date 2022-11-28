import Foundation
import SwiftUI
import Combine

class ViewModel: ObservableObject {
    @Published var passwordInput: String = ""
    @Published var passwordConfirmInput: String = ""
    
    lazy var isMatchpasswordInput: AnyPublisher<Bool, Never> = Publishers
        .CombineLatest($passwordInput, $passwordConfirmInput)
        .map({ (password: String, passwordConfirm: String) in
            return password.isEmpty == false
            && passwordConfirm.isEmpty == false
            && password == passwordConfirm
        })
        .eraseToAnyPublisher()
    
    var disposables = Set<AnyCancellable>()
}
