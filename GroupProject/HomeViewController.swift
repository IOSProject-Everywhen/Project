//
//  ViewController.swift
//  GroupProject
//
//  Created by Student on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButtonOutlet(_ sender: UIButton) {
    }
    
    @IBAction func loginButtonOutlet(_ sender: UIButton) {
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        // choosing correct VC
        if transition == "loginSegue" {
            var destination = segue.destination as! LoginViewController
        }
        else if transition == "signUpSegue" {
            var destination = segue.destination as! SignUpViewController
        }
    }
}

