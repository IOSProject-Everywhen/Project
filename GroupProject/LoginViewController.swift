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
    var loginBool = false
    var userList : [user] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorOutlet.isHidden = true

        // Do any additional setup after loading the view.
        //setUpElements()
    }
    
   /* func setUpElements() {
        errorOutlet.alpha = 0
    } */
    @IBAction func LoginOutlet(_ sender: UIButton) {
        //Create cleaned versions of the text fields
      /*  let email = emailOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines)
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
                let homeViewController =
                self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as?
                EventViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
            
            } */
        loginBool = false
        var count = 0
        for user in userList[0..<userList.count] {
            if user.email == emailOutlet.text! {
                if user.password == passwordOutlet.text! {
                    loginBool = true
                }
            }
            count += 1
        }
        if loginBool == false {
            errorOutlet.isHidden = false
            errorOutlet.text = "User not found. Try again"
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "eventSegue" {
            if loginBool {
                return true
            }
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "eventSegue" {
                let destination = segue.destination as! EventViewController
                destination.userList = userList
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
