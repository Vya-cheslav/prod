//
//  TableViewController.swift
//  products
//
//  Created by Вячеслав Рожнов on 
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
  
  @IBOutlet weak var task1: UILabel!
  @IBOutlet weak var task2: UILabel!
  @IBOutlet weak var task3: UILabel!
  
  
  
  let task = ["Задание 1","Задание 2","Задание 3"]

    override func viewDidLoad() {
        super.viewDidLoad()

        task1.text = task[0]
        task2.text = task[1]
        task3.text = task[2]
      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

  

}
