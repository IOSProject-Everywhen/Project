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
    
    var eventsArray = events
    var userList : [user] = []
    
    @IBAction func AddEventBtn(_ sender: UIButton) {
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
        eventsArray.append(event(name: eventNameField.text!, people: peopleField.text!, location: locationField.text!, time: timeField.text!, other: otherInfoField.text!))
        events.append(event(name: eventNameField.text!, people: peopleField.text!, location: locationField.text!, time: timeField.text!, other: otherInfoField.text!))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        EventCreatedLabel.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "eventSegue" {
            let destination = segue.destination as! EventViewController
            destination.eventsArray = eventsArray
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
