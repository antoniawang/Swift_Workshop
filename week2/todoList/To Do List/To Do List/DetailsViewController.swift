//
//  DetailsViewController.swift
//  To Do List
//
//  Created by Antonia Wang on 2/24/16.
//  Copyright © 2016 Antonia Wang. All rights reserved.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var itemText: UITextField!
    @IBOutlet weak var itemDescription: UITextField!
    
    var newToDoListItem = ToDoListItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        newToDoListItem.text = itemText.text!
        newToDoListItem.description = itemDescription.text!
        items.append(newToDoListItem)
        
        self.navigationController!.popToRootViewControllerAnimated(true)
        
    }
    
}
