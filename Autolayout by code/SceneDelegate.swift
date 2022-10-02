
//  SceneDelegate.swift
//  Autolayout by code
//
//  Created by Omar Leal on 10/1/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var appGlobalWindow: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
     
        guard let appWindowScene = (scene as? UIWindowScene) else { return }
        let navigationStack = UINavigationController(rootViewController: FirstScreenViewController())
        appGlobalWindow = UIWindow(frame: appWindowScene.coordinateSpace.bounds)
        appGlobalWindow?.windowScene = appWindowScene
        appGlobalWindow?.rootViewController =  navigationStack
        appGlobalWindow?.makeKeyAndVisible()
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene)  {}

}

