//
//  RegistrationView.swift
//  TwitterSwiftUIClone
//
//  Created by Ibrahim Ethem Sag on 6.01.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
                           
            AuthHeaderView(title1: "Get started.", title2: " Create your account")
            
            VStack(spacing: 40) {
                CustominputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $email)
                
                CustominputField(imageName: "person",
                                 placeholderText: "Username",
                                 text: $username)
                
                CustominputField(imageName: "person",
                                 placeholderText: "Full name",
                                 text: $fullname)
                
                CustominputField(imageName: "lock",
                                 placeholderText: "Password",
                                 isSecureField: true,
                                 text: $password)
            }
            .padding(32)
            
            Button {
                viewModel.register(withEmail: email,
                                   password: password,
                                   fullname: fullname,
                                   username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
        }
        .navigationDestination(isPresented: $viewModel.didAuthenticateUser) {
            ProfilePhotoSelectorView()
        }
        
        
        .ignoresSafeArea()
    }
}

#Preview {
    RegistrationView()
}
