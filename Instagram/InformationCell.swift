//
//  InformationCell.swift
//  Instagram
//
//  Created by Ahmed Ibrahim on 7/5/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class InformationCell: UITableViewCell {
    
    
    @IBOutlet weak var FirstImageLabel: UIImageView!
    
    
    @IBOutlet weak var FirstLabel: UILabel!
    
    @IBOutlet weak var SecondImageLabel: UIImageView!
    
   
    @IBOutlet weak var SecondLabel: UILabel!
    
    @IBOutlet weak var ThirdLabel: UILabel!
    
    @IBOutlet weak var FourthLabel: UILabel!
    
    @IBOutlet weak var FifthLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        FirstImageLabel.layer.cornerRadius = FirstImageLabel.frame.width/2
        FirstImageLabel.clipsToBounds = true
     FirstImageLabel.layer.borderWidth = 3
        FirstImageLabel.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
