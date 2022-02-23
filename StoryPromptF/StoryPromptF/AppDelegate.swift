//
//  AppDelegate.swift
//  StoryPromptF
//
//  Created by Arya Vashisht on 16/02/22.
//


import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = StackViewController()
        
        window?.makeKeyAndVisible()
        
        window?.backgroundColor = .systemGreen
        
        return true
    }

}
