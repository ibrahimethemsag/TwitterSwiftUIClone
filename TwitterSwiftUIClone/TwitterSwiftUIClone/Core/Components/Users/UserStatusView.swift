//
//  UserStatusView.swift
//  TwitterSwiftUIClone
//
//  Created by Ibrahim Ethem Sag on 5.01.2024.
//

import SwiftUI

struct UserStatusView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("807")
                    .bold()
                    .font(.subheadline)
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 4) {
                Text("6.9M")
                    .bold()
                    .font(.subheadline)
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    UserStatusView()
}
