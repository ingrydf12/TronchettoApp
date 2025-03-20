//
//  OutlineInput.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 13/03/25.
//
import SwiftUI

struct OutlineInput: View {
    @Binding var hasError: Bool
    @Binding var input: String
    var errorMessage: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .trailing) {
                TextField("", text: $input)
                    .padding(.horizontal, 16)
                    .frame(height: 48)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .inset(by: 0.5)
                            .stroke(hasError ? Color.red : Color.black, lineWidth: 1)
                    )
                    .onTapGesture {
                        hasError = false
                    }
                    .onChange(of: input ){
                        hasError = false
                    }
                
                if hasError {
                    Image(systemName: "exclamationmark.circle.fill")
                        .foregroundColor(.red)
                        .padding(.trailing, 16)
                }
            }
            
            if hasError {
                Text(errorMessage)
                    .font(.footnote)
                    .foregroundColor(.red)
            }
        }
    }
}
