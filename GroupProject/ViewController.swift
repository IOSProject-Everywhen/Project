//
//  ViewController.swift
//  GroupProject
//
//  Created by Student on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordOutlet: UITextField!
    @IBOutlet weak var userNameOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func accountCreateButtonOutlet(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            var destination = segue.destination as! EventViewController
            
            
        }
    }
    

}

