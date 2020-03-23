//
//  TableViewCellChampion.swift
//  Test
//
//  Created by Daniel Moreno Arellano on 23/03/2020.
//  Copyright © 2020 Daniel Moreno Arellano. All rights reserved.
//

import UIKit

class TableViewCellChampion: UITableViewCell {

    @IBOutlet weak var imgChampion: UIImageView!
    
    @IBOutlet weak var nameChampion: UILabel!
    
    @IBOutlet weak var rolChampion: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgChampion.layer.cornerRadius = imgChampion.bounds.width / 2.0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
