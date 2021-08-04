//
//  CompletedToDoViewController.swift
//  ToDoList4
//
//  Created by Alyssa Idusuyi on 8/3/21.
//

import UIKit

class CompletedToDoViewController: UIViewController {

    var previousToDoTVC = ToDoTableViewController ()
    var selectedToDo = ToDoClass ()
    
    @IBOutlet weak var ToDoDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        ToDoDisplay.text = selectedToDo.description
    }
    

    @IBAction func completeTapped(_ sender: UIButton) {
    }
/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       

        }
    }
    
*/
}
