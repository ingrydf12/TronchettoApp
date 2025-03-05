//
//  LoginView.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            Color(.bgWhite)
            VStack{
                //MARK: - Carrossel (MAKE THIS A COMPONENT)
                HStack{
                    Image(systemName: "ellipsis.rectangle")
                }
                
                Text("Login View in development.")
            }
            
        }
    }
}

#Preview {
    LoginView()
}
