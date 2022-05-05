//
//  ViewController.swift
//  GroupProject
//
//  Created by Student on 4/7/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var userList : [user] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButtonOutlet(_ sender: UIButton) {
        
    }
    
    @IBAction func loginButtonOutlet(_ sender: UIButton) {
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "loginSegue" {
            let destination = segue.destination as! LoginViewController
            destination.userList = userList
        }
        else if transition == "signupSegue" {
            let destination = segue.destination as! SignUpViewController
        }
    }
}
