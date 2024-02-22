//
//  SideMenuView.swift
//  TwitterSwiftUIClone
//
//  Created by Ibrahim Ethem Sag on 5.01.2024.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                      Circle()
                          .frame(width: 48, height: 48)
                      
                      VStack(alignment: .leading, spacing: 4) {
                          Text("Bruce Wayne")
                              .font(.headline)
                          
                          Text("@batman")
                              .font(.caption)
                              .foregroundColor(.gray)
                      }
                      
                      UserStatusView()
                          .padding(.vertical)
                  }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else if viewModel == .logout {
                        Button {
                            authViewModel.signOut()
                        } label: {
                          SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                }


            
            Spacer()
        }
      
    }
}

#Preview {
    SideMenuView()
}

