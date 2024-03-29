//
//  SceneDelegate.swift
//  OPLogbook
//
//  Created by Alvin Matthew Pratama on 16/07/22.
//

import UIKit

public final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    public var window: UIWindow?

    public func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).        guard let windowScene = (scene as? UIWindowScene) else { return }
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        let rootNavigationController = UINavigationController(rootViewController: CharacterListViewController())
        rootNavigationController.view.backgroundColor = .BB30
        setupNavigationControllerAppearance()
        window.rootViewController = rootNavigationController
        window.makeKeyAndVisible()
    }
    
    private func setupNavigationControllerAppearance() {
        let attributes = [
            NSAttributedString.Key.font:  UIFont.systemFont(ofSize: 0.1),
            NSAttributedString.Key.foregroundColor: UIColor.clear
        ]
        UIBarButtonItem.appearance().setTitleTextAttributes(attributes, for: .normal)
        UIBarButtonItem.appearance().setTitleTextAttributes(attributes, for: .highlighted)
        UINavigationBar.appearance().barTintColor = .BB30
        UINavigationBar.appearance().tintColor = .BW50
        
        let textAttributes: [NSAttributedString.Key: Any] = [
            .font: TypographyConstant.helveticeNeueBold.withSize(TypographyConstant.display1Size),
            .foregroundColor: UIColor.BW50
        ]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().isTranslucent = false
    }

    public func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    public func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    public func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    public func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    public func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

