//
//  Task3TableViewCell.swift
//  products
//
//  Created by Вячеслав Рожнов on 
//  Copyright © 2019 Вячеслав Рожнов. All rights reserved.
//

import UIKit

class Task3TableViewCell: UITableViewCell {

  @IBOutlet weak var productLable: UILabel!
  @IBOutlet weak var unitLable: UILabel!
  @IBOutlet weak var unitBLabel: UILabel!
  
  @IBOutlet weak var markView: UIView!
  @IBOutlet weak var productImage: UIImageView!
  
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  
  override open var frame: CGRect {
    get {
      return super.frame
    }
    set (newFrame) {
      var frame =  newFrame
      frame.origin.y += 10
      frame.origin.x += 10
      frame.size.height = 80
      frame.size.width -= 2 * 10
      super.frame = frame
    }
  }
  
  override open func awakeFromNib() {
    super.awakeFromNib()
    backgroundColor = UIColor.white
    //layer.borderColor = UIColor.black.cgColor
    //layer.borderWidth = (layer.borderWidth > 0 ? 0 : 1)
    layer.cornerRadius = (layer.cornerRadius > 0 ? 0 : 4)
    
    //layer.shadowRadius = 4.0
    //layer.shadowOpacity = 0.6
    //layer.shadowOffset = CGSize.zero
    
    clipsToBounds = false
    
    productImage.clipsToBounds = true
    productImage.layer.cornerRadius = layer.cornerRadius
    productImage.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
    
    
    
  }
}
