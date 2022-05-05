//
//  EventViewController.swift
//  GroupProject
//
//  Created by Student on 4/7/22.
//

import UIKit

class EventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = eventTableViewController.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)
        cell.textLabel?.text = eventsArray[indexPath.row].name
        return cell
    }
    
    var eventsArray : [event] = []
    var userList : [user] = []

    @IBOutlet weak var eventViewOutlet: UILabel!
    
    @IBOutlet weak var addEventButton: UIButton!
    
    @IBOutlet weak var eventTableViewController: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTableViewController.delegate = self
        eventTableViewController.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "homeSegue" {
            let destination = segue.destination as! HomeViewController
            destination.userList = userList
        }
        else if transition == "addEventSegue" {
            let destination = segue.destination as! AddEventViewController
            destination.userList = userList
        }
        else if transition == "eventInfoSegue" {
            let destination = segue.destination as! EventInfoViewController
            destination.eventName = eventsArray[(eventTableViewController.indexPathForSelectedRow?.row)!].name
            destination.eventPeople = eventsArray[(eventTableViewController.indexPathForSelectedRow?.row)!].people
            destination.eventLocation = eventsArray[(eventTableViewController.indexPathForSelectedRow?.row)!].location
            destination.eventTime = eventsArray[(eventTableViewController.indexPathForSelectedRow?.row)!].time
            destination.eventInfo = eventsArray[(eventTableViewController.indexPathForSelectedRow?.row)!].other
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
