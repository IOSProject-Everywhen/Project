//
//  LoginViewController.swift
//  GroupProject
//
//  Created by student on 4/29/22.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    @IBOutlet weak var errorOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements() {
        errorOutlet.alpha = 0
    }
    @IBAction func LoginOutlet(_ sender: UIButton) {
        //Create cleaned versions of the text fields
        let email = emailOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //Validate the fields
        //Sign in the user
        Auth.auth().signIn(withEmail: email, password: password) {
            (result, error) in
            
            //Couldnt sign in
            if error != nil {
                self.errorOutlet.text = error!.localizedDescription
                self.errorOutlet.alpha = 1
            }
            else {
                
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
