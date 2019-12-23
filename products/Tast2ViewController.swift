//
//  Tast2TableView.swift
//  products
//
//  Created by Вячеслав Рожнов on 
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class Tast2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 

  
  let array = [["Масло",""],["Клиновый сироп","1 бутылка"],["Хлеб","2 булки"],["Лавровый лист","15 гр"],["Лук розовый","1 кг"]]
  let array_color = [UIColor.gray, UIColor.green, UIColor.red,UIColor.yellow, UIColor.purple]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return array.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Task2TableViewCell
    
    
  cell.productLable.text = array[indexPath.section][0]
  cell.unitLable.text = array[indexPath.section][1]
  cell.unitLable.frame.size.height = (array[indexPath.section][1] == "" ? 0 : cell.unitLable.frame.size.height)
  cell.markView.backgroundColor = array_color[indexPath.section]
  cell.markView.layer.cornerRadius = 2
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
  }
  
  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    return true
  }
 
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 10
  }
  
  // Make the background color show through
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let headerView = UIView()
    headerView.backgroundColor = UIColor.clear
    return headerView
  }
  

  
  func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    let edit = editAction(at: indexPath)
    let delete = deleteAction(at: indexPath)
    
    return UISwipeActionsConfiguration(actions: [edit, delete])
  }
  
  func editAction(at indexPath: IndexPath) -> UIContextualAction {
    
    
    
    let action = UIContextualAction(style: .normal, title: "edit") {(action, view, completion) in
      completion(true)
      
    }
    action.image = UIImage(named: "edit")
    action.backgroundColor =  #colorLiteral(red: 0.126000002, green: 0.7599999905, blue: 0.4169999957, alpha: 1)
    
    return action
  }
  
  func deleteAction(at indexPath: IndexPath) -> UIContextualAction {
    let action = UIContextualAction(style: .normal, title: "delete") {(action, view, completion) in
      completion(true)
      
    }
    action.image = UIImage(named: "delete")
    action.backgroundColor =  #colorLiteral(red: 0.8921089768, green: 0.3489636183, blue: 0.3907785416, alpha: 1)
    
    
    
    return action
  }
  
  

  
  
 	

}
