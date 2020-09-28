//
//  SceneDelegate.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 25/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        let mainMenu = MainMenu()
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: mainMenu)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

