//
//  SceneDelegate.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 24/07/2023.
//

import UIKit
import FirebaseAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

   var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      //  self.setupWindow(with: scene)
        //self.checkAuthentication()
        /*
guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let currentUser = Auth.auth().currentUser
        if currentUser != nil {
            let tabBar = LoginController()
            window.rootViewController = tabBar
        } else {
            let mainController = RegisterController()
            let navigationController = UINavigationController(rootViewController: mainController)
            window.rootViewController = navigationController
        }
        window.makeKeyAndVisible()
        self.window = window
        */
    }
}
       /*
     
    private func setupWindow(with scene: UIScene){
        guard let windowScence = (scene as? UIWindowScene) else {return}
        let window = UIWindow(windowScene: windowScence)
        self.window = window
        self.window?.makeKeyAndVisible()
       
    }
        
    
    
     
    
    public func checkAuthentication()
{
if Auth.auth().currentUser == nil {
self.goToC(with: LoginController())
        }else{
self.goToC(with: HomeController())
        }
}
     
     

    private func goToC(with viewController: UIViewController)
{
        DispatchQueue.main.async{ [weak self] in
            UIView.animate(withDuration: 0.25) {
                self?.window?.layer.opacity = 0
            } completion:  { [weak self] _ in
               
               let nav = UINavigationController(rootViewController: viewController)
                nav.modalPresentationStyle = .fullScreen
                self?.window?.rootViewController = nav
                UIView.animate(withDuration: 0.25){ [weak self] in
                self?.window?.layer.opacity = 1
                
                 }
                
            }
        }
    }
 
}
 */
/*
  let userRequest = RegiserUserRequest(
  username: "Mohammadabdelfattah",
  email: "mohamed.seleim.03@gmail.com",
  password: "Medo1234"
  )
  AuthService.shared.registerUser(with: userRequest)
  { wasRegistered, error
      in
      if let error = error {
          print(error.localizedDescription)
          return
      }
      print("wasRegistered" , wasRegistered)

      
  }
  
  */
  
