//
//  BalanceTableViewCell.swift
//  products
//
//  Created by Вячеслав Рожнов on 
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class BalanceTableViewCell: UITableViewCell {

  @IBOutlet weak var balanceNameLable: UILabel!
  @IBOutlet weak var balanceFactLable: UILabel!
  @IBOutlet weak var balanceRecomendationLable: UILabel!
  
  @IBOutlet weak var balanceMarkImage: UIImageView!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
