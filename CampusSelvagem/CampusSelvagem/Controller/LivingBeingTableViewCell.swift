//
//  LivingBeingTableViewCell.swift
//  CampusSelvagem
//
//  Created by Felipe Semissatto on 21/08/19.
//  Copyright © 2019 Felipe Semissatto. All rights reserved.
//

import UIKit

class LivingBeingTableViewCell: UITableViewCell {
    //MARK: Outlets
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scientificNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoImageView.layer.cornerRadius = photoImageView.bounds.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
