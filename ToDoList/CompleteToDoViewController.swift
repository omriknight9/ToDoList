//
//  CompleteToDoViewController.swift
//  ToDoList
//
//  Created by Omri Shalev on 28/08/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo.name
        
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        var index = 0
        for toDo in previousVC.toDos {
            if toDo.name == selectedToDo.name {
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
    }

}
