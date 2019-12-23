//
//  GetDietViewController.swift
//  products
//
//  Created by Вячеслав Рожнов on 
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class GetDietViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

  

  let arr_diet = ["Средиземноморская", "Кремлевская", "Иное"]

  @IBAction func close(_ sender: Any) {
    dismiss(animated: true, completion: nil)
  }
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return arr_diet.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return arr_diet[row]
  }


}
