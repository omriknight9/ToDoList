//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Omri Shalev on 28/08/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previuosVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        importantSwitch.transform = CGAffineTransform(scaleX: 1.7, y: 1.4)
    
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        /*
        
        let toDo = ToDo()
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        previuosVC.toDos.append(toDo)
        previuosVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
 
         */
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        
        let toDo = ToDoCoreData(entity: ToDoCoreData.entity(), insertInto: context)
            
            toDo.name = titleTextField.text
            toDo.important = importantSwitch.isOn
            
            try? context.save()
            
        }
        navigationController?.popViewController(animated: true)
        
    }
 



}
