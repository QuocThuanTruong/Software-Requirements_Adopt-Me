//
//  WelcomeVC.swift
//  AdoptMe
//
//  Created by Quoc Thuan Truong on 12/5/20.
//

import UIKit
import MaterialComponents

class WelcomeVC: UIViewController {
    // MARK: -Outlets
    @IBOutlet weak var registerButton: MDCButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        registerButton.layer.cornerRadius = 5.0
    }
    

    @IBAction func registerAct(_ sender: Any) {
        let welcomeVC = self.presentingViewController
        
        self.dismiss(animated: true, completion: {
            let storyboard = UIStoryboard(name: "Auth", bundle: nil)
            let dest = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
            
            dest.modalPresentationStyle = .fullScreen
			//Show register screen
            welcomeVC?.present(dest, animated: true, completion: nil)
        })
    }
    
    @IBAction func loginAct(_ sender: Any) {
        let welcomeVC = self.presentingViewController
        
        self.dismiss(animated: true, completion: {
            let storyboard = UIStoryboard(name: "Auth", bundle: nil)
            let dest = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            
            dest.modalPresentationStyle = .fullScreen
			//Show login screen
            welcomeVC?.present(dest, animated: true, completion: nil)
        })
    }
}
