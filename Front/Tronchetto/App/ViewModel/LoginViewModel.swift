//
//  LoginViewModel.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 13/03/25.
//

import SwiftUI
import Foundation

class LoginViewModel: ObservableObject {
//    let loginManager: LoginRequest = LoginRequest()
    var email: String
    var password: String
    var userSendRecover: Bool
    
    @Published var hasError: Bool = false

    init() {
        self.email = ""
        self.password = ""
        self.userSendRecover = false
    }

    static func redirectURL(websiteURL: String) {
        if let urlRegister = URL(string: websiteURL) {
            UIApplication.shared.open(urlRegister)
        }
    }

//    func login() {
//        loginManager.login(email: email, password: password) { result in
//            switch result {
//            case .success(let login):
//                DispatchQueue.main.async {
//                    self.tryLogin = false
//                    self.appModel.setUserDefaultsPropertie(propertie: .idLogin, propertieValue: .string(login.user.id))
//                    self.appModel.setUserDefaultsPropertie(propertie: .iosiMaisToken, propertieValue: .string(login.token))
//                    self.appModel.setUserDefaultsPropertie(propertie: .isLoggedIn, propertieValue: .boolean(true))
//                    self.tokenExpiration = Date().addingTimeInterval(86400)
//                    self.appModel.setUserDefaultsPropertie(propertie: .tokenExpiration, propertieValue: .date(self.tokenExpiration!))
//                    UserDefaults.standard.synchronize()
//                    
//                    self.isLogged = true
//                    self.email = ""
//                    self.password = ""
//                }
//            case .failure(let error):
//                print("Error retrieving users: \(error.localizedDescription)")
//                UserDefaults.standard.setValue(false, forKey: "isLoggedIn")
//                self.appModel.setUserDefaultsPropertie(propertie: .isLoggedIn, propertieValue: .boolean(false))
//            }
//        }
//    }
}
