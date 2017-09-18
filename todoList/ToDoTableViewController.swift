//
//  ToDoTableViewController.swift
//  todoList
//
//  Created by H on 9/17/17.
//  Copyright © 2017 Harshada. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var list = [["Study Bucket List", "Very important! It is a Belt exam topic.", "09/20/2017"]]
    
    @IBAction func plusButtonPressed(_ sender: UIBarButtonItem) {
        print("Plus button was pressed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath) as! ToDoCell
        cell.titleLabel.text = list[indexPath.row][0]
        cell.descLabel.text = list[indexPath.row][1]
        cell.dueDateLabel.text = list[indexPath.row][2]
        return cell
    }

}
