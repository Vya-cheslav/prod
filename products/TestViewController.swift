//
//  TestViewController.swift
//  products
//
//  Created by Вячеслав Рожнов on
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    
    cell.textLabel?.text = "lab"
    
    return cell
  }
  

  @IBOutlet weak var testL: NSLayoutConstraint!
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func test(_ sender: Any) {
    testL.constant = testL.constant > 400 ?  20 : 1200
  }
  
   

}
