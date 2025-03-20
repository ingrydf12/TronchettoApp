//
//  LoginView.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var loginViewModel: LoginViewModel = LoginViewModel()
    
    var body: some View {
        ZStack{
            Color(.bgWhite)
                .ignoresSafeArea()
            
            VStack{
                Image(.foodIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                
                Text("Entre em sua conta")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.vertical, 20)
                
                VStack (alignment: .leading){
                    Text("E-mail")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    OutlineInput(hasError: $loginViewModel.hasError, input: $loginViewModel.email, errorMessage: "E-mail ou senha incorretos.")
                    
                    Text("Senha")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    
                    
                }.padding(.horizontal, 16)
                
            }
            
        }
            
    }
}

#Preview {
    LoginView()
}
