//
//  FeadView.swift
//  TwitterSwiftUIClone
//
//  Created by Ibrahim Ethem Sag on 5.01.2024.
//

import SwiftUI

struct FeadView: View {
    @State private var showNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                        LazyVStack{
                            ForEach(0 ... 20,id: \.self) { _ in
                                TweetRowView()
                                    .padding()
                            }
                        }
                    }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
            }
        }
        
    }
}

#Preview {
    FeadView()
}
