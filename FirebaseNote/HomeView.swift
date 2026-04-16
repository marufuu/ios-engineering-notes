//
//  HomeView.swift
//  FirebaseNote
//
//  Created by Maruf on 16/4/26.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Welcome 🎉")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Button("Logout") {
                logout()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            
        }
        .padding()
    }
    
    func logout() {
        do {
            try AuthService.shared.logout()
            print("User logged out")
        } catch {
            print("Logout error: \(error.localizedDescription)")
        }
    }
}

#Preview {
    HomeView()
}
