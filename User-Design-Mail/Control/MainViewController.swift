//
//  ViewController.swift
//  User-Design-Mail
//
//  Created by Alexander Skrypnyk on 5/16/19.
//  Copyright © 2019 skrypnyk. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    stayLoggedInApp()
  }
  
 
  @IBAction func logInButton(_ sender: UIButton) {
  }
    
  @IBAction func singInButton(_ sender: UIButton) {
  }

    func stayLoggedInApp () {
        Auth.auth().addStateDidChangeListener { [weak self] (auth, user) in
            if user != nil {
                self?.performSegue(withIdentifier: "mainToTasksSegue", sender: nil)
                
            }
        }
    }
}

