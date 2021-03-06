//
//  SignUpViewController.swift
//  GroupProject
//
//  Created by student on 4/29/22.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseFirestore

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameOutlet: UITextField!
    @IBOutlet weak var lastNameOutlet: UITextField!
    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    @IBOutlet weak var errorOutlet: UILabel!
    var firstName = ""
    var lastName = ""
    var email = ""
    var password = ""
    var userList = users
    var loginBool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorOutlet.isHidden = true
        // Do any additional setup after loading the view.
        //setUpElements()
    }
    
/*    func setUpElements() {
        errorOutlet.alpha = 0
    }
    
    func validateFields() -> String? {
        
        if  firstNameOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields"
        }
        
        return nil
    }
 */
    @IBAction func signUpButtonOutlet(_ sender: UIButton) {
   /*     let error = validateFields()
        
        if error != nil {
            showError(error!)
        }
        else {
            
            let firstName = firstNameOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordOutlet.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //Create the user
            Auth.auth().createUser(withEmail:email, password:password) { (result, err) in
                
                
                //Check for errors
                if err != nil {
                    self.showError("Error creating user")
                }
                else {
                    //User was created successfully. Now store the first and last name of the user within the database
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["firstname":firstName, "lastname":lastName, "uid":result!.user.uid]) { (error) in
                        
                        
                        //Check to see if the user info was saved successfully
                        if error != nil {
                            self.showError("User data could not  be saved. Try again")
                        }
                    }
                    //Transition to the event screen
                    self.transitionToHome()
                    
                    
               }
            } */
        
        loginBool = false
        firstName = firstNameOutlet.text!
        lastName = lastNameOutlet.text!
        email = emailOutlet.text!
        password = passwordOutlet.text!
        
        if firstName.isEmpty || lastName.isEmpty || email.isEmpty || password.isEmpty {
            errorOutlet.isHidden = false
            errorOutlet.text = "No fields can be left empty. Try again"
            loginBool = false
        }
        else {
            loginBool = true
        }
        userList.append(user(firstName: firstName, lastName: lastName, email: email, password: password))
        users.append(user(firstName: firstName, lastName: lastName, email: email, password: password))
        
        }
 /*   }
    
    func showError(_ message:String) {
        errorOutlet.text = message
        errorOutlet.alpha = 1
    }
    
    func transitionToHome() {
        let homeViewController =
        storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as?
        EventViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
 */
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
