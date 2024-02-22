//
//  TwitterSwiftUICloneApp.swift
//  TwitterSwiftUIClone
//
//  Created by Ibrahim Ethem Sag on 5.01.2024.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUICloneApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
