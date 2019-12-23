//
//  Task3ViewController.swift
//  products
//
//  Created by Вячеслав Рожнов on 
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class 	Task3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var fromTextField: UITextField!
  @IBOutlet weak var toTextField: UITextField!
  
  
  
  let arrSection = ["Овощи","Рыба","Остальное"]
  
  let array = [[["Грибы сушеные белые. Урожай 2019 года","399,99"],["Лук розовый","109,99"]],[["Ласось атлантический","1009,99"]],[["Клиновый сироп","39,99"],["Хлеб","49,99"],["Лавровый лист","15,89"]]]
    
    
 
  let array_color = [UIColor.gray, UIColor.green, UIColor.red,UIColor.yellow, UIColor.purple]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    fromTextField.layer.cornerRadius = 0
    
  
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return arrSection.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return array[section].count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Task3TableViewCell
    
    
    cell.productLable.text = array[indexPath.section][indexPath.row][0]
    cell.unitLable.frame.size.height = (array[indexPath.section][indexPath.row][1] == "" ? 0 : cell.unitLable.frame.size.height)
    cell.unitBLabel.text = array[indexPath.section][indexPath.row][1]
    //cell.markView.backgroundColor = array_color[indexPath.section]
    cell.markView.layer.cornerRadius = 2
    
    let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: array[indexPath.section][indexPath.row][1])
    attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
    
    cell.unitLable.attributedText = attributeString
    cell.unitLable.textColor = #colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
  }
  
  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    return true
  }
  
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 45
  }
  
  
  // Make the background color show through
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//    let headerView = UIView()
//    headerView.backgroundColor = UIColor.white
//    return headerView
    
    let lable = UILabel()
    lable.text = "  \(arrSection[section])"
    
    return lable
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

extension UIViewController {
  open override func awakeFromNib() {
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
  }
}
