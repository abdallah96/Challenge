//
//  ViewController.swift
//  Challenge
//
//  Created by Abdallah Gueye on 16/11/2020.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {
    
    @IBOutlet var signInButton: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().presentingViewController = self
        // Do any additional setup after loading the view.
    }


}

