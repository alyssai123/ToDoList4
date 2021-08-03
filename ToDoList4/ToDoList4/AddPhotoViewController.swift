//
//  AddPhotoViewController.swift
//  ToDoList4
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class AddPhotoViewController: UIViewController {

    var previousToDoTVC = ToDoTableViewController ()
    @IBOutlet weak var descriptionInput: UITextField!
    @IBOutlet weak var switchInput: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
            let newToDo = ToDoClass ()
        
        if let checkForInput = descriptionInput.text {
            newToDo.important = switchInput.isOn
            newToDo.description = checkForInput
        }
        
        previousToDoTVC.listOfToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }

    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        }
    }
*/

}
