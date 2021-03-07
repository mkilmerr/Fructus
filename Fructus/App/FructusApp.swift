//
//  FructusApp.swift
//  Fructus
//
//  Created by Marcos Kilmer on 05/03/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        
        }
    }
}
