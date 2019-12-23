//
//  Task1ViewController.swift
//  products
//
//  Created by Вячеслав Рожнов on
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class Task1ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource{
  
  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var yellowSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var tabLayoutConstraint: NSLayoutConstraint!
  
  
  let monthArray = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
  
  let balanse = [["Протеин", "11,9", "56 г"],["Клетчатка", "11", " 38 г"],["Калий", "1", " 4700 мг"],["Витамин С", "12", "90 мг"],["Витамин А", "10", "990 мг"],["Натрий", "40", "1500 мг"],["Железо", "1", "8 мг"]]
  
  let array_color = [#colorLiteral(red: 0.126000002, green: 0.7599999905, blue: 0.4169999957, alpha: 1), #colorLiteral(red: 0.126000002, green: 0.7599999905, blue: 0.4169999957, alpha: 1), #colorLiteral(red: 0.8274509804, green: 0.3843137255, blue: 0.4078431373, alpha: 1), #colorLiteral(red: 0.9921568627, green: 0.7176470588, blue: 0, alpha: 1), #colorLiteral(red: 0.8913419843, green: 0.3490430713, blue: 0.3953102827, alpha: 1), #colorLiteral(red: 1, green: 0.7029547095, blue: 0, alpha: 1), #colorLiteral(red: 1, green: 0.7029547095, blue: 0, alpha: 1)]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    redSlider.setThumbImage(UIImage(named: "redCircle"), for: .normal)
    yellowSlider.setThumbImage(UIImage(named: "yellowCircle"), for: .normal)
    greenSlider.setThumbImage(UIImage(named: "greenCircle"), for: .normal)
    // Do any additional setup after loading the view.
    tabLayoutConstraint.constant = tabLayoutConstraint.constant + CGFloat(44 * (balanse.count-1))
  }
 
  @IBAction func close(_ sender: Any) {
      self.navigationController?.popViewController(animated: true)
  }
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return monthArray.count
  }
  
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ButtonCollectionViewCell
      cell.monthLable?.text = monthArray[indexPath.row]
     return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let cell = collectionView.cellForItem(at: indexPath) as! ButtonCollectionViewCell
   
    cell.greenStripView.layer.backgroundColor =  #colorLiteral(red: 0.126000002, green: 0.7599999905, blue: 0.4169999957, alpha: 1)
    cell.monthLable.textColor = UIColor.black
    
    collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    
  }
  
  func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    let cell = collectionView.cellForItem(at: indexPath) as! ButtonCollectionViewCell
    
    cell.greenStripView.layer.backgroundColor = UIColor.white.cgColor
    cell.monthLable.textColor =  #colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)

  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BalanceTableViewCell
   
    cell.balanceMarkImage.backgroundColor = array_color[indexPath.row]
    cell.balanceNameLable.text = balanse[indexPath.row][0]
    cell.balanceFactLable.text = balanse[indexPath.row][1]
    cell.balanceRecomendationLable.text = balanse[indexPath.row][2]
    
    return cell
  }

  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return balanse.count
  }

  @IBAction func get_diet(_ sender: Any) {
    
  }
  

    


}
