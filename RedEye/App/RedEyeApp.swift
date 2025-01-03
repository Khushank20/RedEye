//
//  RedEyeApp.swift
//  RedEye
//
//  Created by Khushank on 12/3/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct RedEyeApp: App {
//    @StateObject var locationViewModel = LocationSearchViewModel()
    @StateObject var authViewModel = AuthViewModel()
    @StateObject var homeViewModel = HomeViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
//                .environmentObject(locationViewModel)
                .environmentObject(authViewModel)
                .environmentObject(homeViewModel)
        }
    }
}
