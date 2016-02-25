//
//  ViewController.swift
//  To Do List
//
//  Created by Antonia Wang on 2/24/16.
//  Copyright © 2016 Antonia Wang. All rights reserved.
//

import UIKit
var items = [ToDoListItem]()

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCellWithIdentifier("toDoListCell", forIndexPath: indexPath)
        
        let toDoListLabel = cell.viewWithTag(1000) as! UILabel
        let toDoListDescLabel = cell.viewWithTag(2000) as! UILabel
        
        if(items.count>0) {
            toDoListLabel.text = items[indexPath.row].text
            toDoListDescLabel.text = items[indexPath.row].description
        } else {
            toDoListLabel.text = ""
            toDoListDescLabel.text = ""
        }
        cell.selectionStyle = .None
        return cell

    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            if (indexPath.row<items.count) {
                items.removeAtIndex(indexPath.row)
            }
            tableView.reloadData()
        }
    }


}

