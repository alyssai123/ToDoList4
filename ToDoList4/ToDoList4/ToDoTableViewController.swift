//
//  ToDoTableViewController.swift
//  ToDoList4
//
//  Created by Alyssa Idusuyi on 8/2/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var listOfToDo : [ToDoClass] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    listOfToDo = createToDo ()

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToDo = listOfToDo [indexPath.row]
        cell.textLabel?.text = eachToDo.description
    
        if eachToDo.important {
            cell.textLabel?.text = "❗️" + eachToDo.description
        } else {
            cell.textLabel?.text = eachToDo.description
        }
        
        return cell
        }
   
    func createToDo () -> [ToDoClass] {
        let swiftToDo = ToDoClass ()
        swiftToDo.description = "Learn Swift"
        swiftToDo.important = true
        
        let dogToDo = ToDoClass ()
        dogToDo.description = "Walk the Dog"
        // important is set to the false by default
        
        return [swiftToDo, dogToDo]

   
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let eachToDo = listOfToDo [indexPath.row]
        
        performSegue(withIdentifier: "movetoCompletedToDoVC", sender: eachToDo)
    }
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoVC = segue.destination as? AddPhotoViewController {
            nextAddToDoVC.previousToDoTVC = self }
        
        if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
            if let choosenToDO = sender as? ToDoClass {
                nextCompletedToDoVC.selectedToDo = choosenToDO
                nextCompletedToDoVC.previousToDoTVC = self
            }
    }
   
    }
}
