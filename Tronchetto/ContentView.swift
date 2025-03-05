//
//  ContentView.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        ZStack{
            Color(.black)
            VStack{
                Text("Welcome, home.")
                    .font(.belanosima(fontStyle: .title))
                    .foregroundStyle(.white)
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
