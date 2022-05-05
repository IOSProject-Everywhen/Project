//
//  EventInfoViewController.swift
//  GroupProject
//
//  Created by Nicholas Taylor on 5/2/22.
//

import UIKit


class EventInfoViewController: UIViewController {

    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var otherInfoLabel: UILabel!
    
    var userList : [user] = []
    
    var eventName = ""
    var eventPeople = ""
    var eventLocation = ""
    var eventTime = ""
    var eventInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //populating labels with correct info
        eventNameLabel.text = "\(eventName)"
        peopleLabel.text = "People: \(eventPeople)"
        locationLabel.text = "Location: \(eventLocation)"
        timeLabel.text = "Time: \(eventTime)"
        otherInfoLabel.text = "Other Info: \(eventInfo)"
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
