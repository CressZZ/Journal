//
//  AppDelegate.swift
//  Journal
//
//  Created by JinSeo Yoon on 2018. 7. 21..
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
<<<<<<< HEAD
    
        customizeNavigationBar()
        injectEnvironment()        
=======
        
        customizeNavigationBar()
        injectEnvironment()
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        
        return true
    }
    
    private func injectEnvironment() {
<<<<<<< HEAD
        if 
            let navigationController = window?.rootViewController as? UINavigationController,
            let timelineViewController = navigationController.topViewController as? TimelineViewController {
            let entries: [Entry] = [ // 어제
                Entry(createdAt: Date.before(1), text: "어제 일기"), Entry(createdAt: Date.before(1), text: "어제 일기"), Entry(createdAt: Date.before(1), text: "어제 일기"),
                // 2일 전
                Entry(createdAt: Date.before(2), text: "2일 전 일기"), Entry(createdAt: Date.before(2), text: "2일 전 일기"), Entry(createdAt: Date.before(2), text: "2일 전 일기"), Entry(createdAt: Date.before(2), text: "2일 전 일기"), Entry(createdAt: Date.before(2), text: "2일 전 일기"), Entry(createdAt: Date.before(2), text: "2일 전 일기"),
                // 3일 전
                Entry(createdAt: Date.before(3), text: "3일 전 일기"), Entry(createdAt: Date.before(3), text: "3일 전 일기")
            ]
            
            let repo = InMemoryEntryRepository(entries: entries)
            let env = Environment(
                entryRepository: repo,
                settings: UserDefaults.standard
            ) 
            
            timelineViewController.viewModel = TimelineViewViewModel(environment: env) 
        }
=======
        guard
            let navViewController = window?.rootViewController as? UINavigationController,
            let timelineViewController = navViewController.topViewController as? TimelineViewController
            else { return }
        
        let entries: [Entry] = [
            // 어제
            Entry(createdAt: Date.before(1), text: "어제 일기"),
            Entry(createdAt: Date.before(1), text: "어제 일기"),
            Entry(createdAt: Date.before(1), text: "어제 일기"),
            
            // 2일 전
            Entry(createdAt: Date.before(2), text: "2일 전 일기"),
            Entry(createdAt: Date.before(2), text: "2일 전 일기"),
            Entry(createdAt: Date.before(2), text: "2일 전 일기"),
            Entry(createdAt: Date.before(2), text: "2일 전 일기"),
            Entry(createdAt: Date.before(2), text: "2일 전 일기"),
            Entry(createdAt: Date.before(2), text: "2일 전 일기"),
            
            // 3일 전
            Entry(createdAt: Date.before(3), text: "3일 전 일기"),
            Entry(createdAt: Date.before(3), text: "3일 전 일기")
        ]
        let entryRepo = InMemoryEntryRepository(entries: entries)
        let env = Environment(entryRepository: entryRepo)
        
        timelineViewController.viewModel = TimelineViewControllerModel(environment: env)
    }
    
    private func customizeNavigationBar() {
        guard let navViewController = window?.rootViewController as? UINavigationController else { return }
        
        navViewController.navigationBar.prefersLargeTitles = true
        navViewController.navigationBar.barStyle = .black
        
        let bgimage = UIImage.gradientImage(with: [.gradientStart, .gradientEnd], size: CGSize(width: UIScreen.main.bounds.size.width, height: 1))
        
        navViewController.navigationBar.barTintColor = UIColor(patternImage: bgimage!)
        navViewController.navigationBar.tintColor = UIColor.white
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
    }
    
    private func customizeNavigationBar() {
        if let navigationController = window?.rootViewController as? UINavigationController {
            navigationController.navigationBar.prefersLargeTitles = true
            navigationController.navigationBar.barStyle = .black
            navigationController.navigationBar.tintColor = .white
            
            let bgImage = UIImage.gradientImage(with: [.gradientStart, .gradientEnd], size: CGSize(width: UIScreen.main.bounds.width, height: 1))
            navigationController.navigationBar.barTintColor = UIColor(patternImage: bgImage!)
        }
    }
}

