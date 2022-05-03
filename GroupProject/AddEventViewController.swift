//
//  AddEventViewController.swift
//  GroupProject
//
//  Created by Nicholas Taylor on 5/2/22.
//

import UIKit

class AddEventViewController: UIViewController {
    
    @IBOutlet weak var eventNameField: UITextField!
    
    @IBOutlet weak var peopleField: UITextField!
    
    @IBOutlet weak var locationField: UITextField!
    
    @IBOutlet weak var timeField: UITextField!
    
    @IBOutlet weak var otherInfoField: UITextField!
    
    @IBOutlet weak var addEventButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
