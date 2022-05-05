//
//  AddEventViewController.swift
//  GroupProject
//
//  Created by Nicholas Taylor on 5/2/22.
//

import UIKit

class AddEventViewController: UIViewController {
    
    @IBOutlet weak var eventNameField: UITextField!
    @IBOutlet weak var EventNameLabel: UILabel!
    @IBOutlet weak var peopleField: UITextField!
    @IBOutlet weak var PeopleLabel: UILabel!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var otherInfoField: UITextField!
    
    @IBOutlet weak var addEventButton: UIButton!
    
    @IBOutlet weak var EventCreatedLabel: UILabel!
    
    @IBAction func AddEventBtn(_ sender: Any) {
        eventNameField.isHidden = true
        EventNameLabel.isHidden = true
        peopleField.isHidden = true
        PeopleLabel.isHidden = true
        locationField.isHidden = true
        locationLabel.isHidden = true
        timeField.isHidden = true
        timeLabel.isHidden = true
        otherInfoField.isHidden = true
        InfoLabel.isHidden = true 
        addEventButton.isHidden = true
        EventCreatedLabel.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        EventCreatedLabel.isHidden = true
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
