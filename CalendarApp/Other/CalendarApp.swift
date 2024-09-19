//
//  CalendarAppApp.swift
//  CalendarApp
//
//  Created by Natneal Asmelash on 9/18/24.
//

import SwiftUI
import FirebaseCore

//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure ()
//
//    return true
//  }
//}

@main
struct CalendarApp: App {
    // register app delegate for Firebase setup
//     @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    init(){
        FirebaseApp.configure ()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
