//
//  AlertManager.swift
//  swift-login-system-tutorial
//
//  Created by YouTube on 2022-11-01.
//

import UIKit

class AlertManager {
    
    private static func showBasicAlert(on vc7: UIViewController, title: String, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title,
                                          message: message,
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss",
                                          style: .default,
                                          handler: nil))
            vc7.present(alert,
                        animated: true)
        }
    }
}

// MARK: - Show Validation Alerts
extension AlertManager {
    
    public static func showInvalidEmailAlert(on vc7: UIViewController) {
        self.showBasicAlert(on: vc7, title: "Invalid Email", message: "Please enter a valid email.")
    }
    
    public static func showInvalidPasswordAlert(on vc7: UIViewController) {
        self.showBasicAlert(on: vc7, title: "Invalid Password", message: "Please enter a valid password.")
    }
    
    public static func showInvalidUsernameAlert(on vc7: UIViewController) {
        self.showBasicAlert(on: vc7, title: "Invalid Username", message: "Please enter a valid username.")
    }
}


// MARK: - Registration Errors
extension AlertManager {
    
    public static func showRegistrationErrorAlert(on vc7: UIViewController) {
        self.showBasicAlert(on: vc7, title: "Unknown Registration Error", message: nil)
    }
    
    public static func showRegistrationErrorAlert(on vc7: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc7, title: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
}


// MARK: - Log In Errors
extension AlertManager {
    
    public static func showSignInErrorAlert(on vc7: UIViewController) {
        self.showBasicAlert(on: vc7, title: "Unknown Error Signing In", message: nil)
    }
    
    public static func showSignInErrorAlert(on vc7: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc7, title: "Error Signing In", message: "\(error.localizedDescription)")
    }
}


// MARK: - Logout Errors
extension AlertManager {
    
    public static func showLogoutError(on vc7: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc7, title: "Log Out Error", message: "\(error.localizedDescription)")
    }
}


// MARK: - Forgot Password
extension AlertManager {

    public static func showPasswordResetSent(on vc7: UIViewController) {
        self.showBasicAlert(on: vc7, title: "Password Reset Sent", message: nil)
    }
    
    public static func showErrorSendingPasswordReset(on vc7: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc7, title: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
}


// MARK: - Fetching User Errors
extension AlertManager {
    
    public static func showFetchingUserError(on vc7: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc7, title: "Error Fetching User", message: "\(error.localizedDescription)")
    }
    
    public static func showUnknownFetchingUserError(on vc7: UIViewController) {
        self.showBasicAlert(on: vc7, title: "Unknown Error Fetching User", message: nil)
    }
}
