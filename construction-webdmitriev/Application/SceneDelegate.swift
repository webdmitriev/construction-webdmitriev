//
//  SceneDelegate.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 01.03.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)

        let previewViewController = PreviewViewController()
        let presenter = PreviewPresenter(view: previewViewController, navigationDelegate: previewViewController)
        previewViewController.presenter = presenter

        // Устанавливаем PreviewViewController как rootViewController
        let navigationController = UINavigationController(rootViewController: previewViewController)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }

}

