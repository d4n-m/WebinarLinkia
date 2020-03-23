//
//  Champion.swift
//  Test
//
//  Created by Daniel Moreno Arellano on 23/03/2020.
//  Copyright © 2020 Daniel Moreno Arellano. All rights reserved.
//

import Foundation
import UIKit

class Champion{
    
    var nameChampion = String()
    var titleChampion = String()
    var descChampion = String()
    var imgChampion = UIImage()
    var backgroundChampion = UIImage()
    var rolChampion = UIImage()
    
    init(nameChampion:String, titleChampion:String, descChampion:String, imgChampion:UIImage, backgroundChampion:UIImage, rolChampion:UIImage){
        
        self.nameChampion = nameChampion
        self.titleChampion = titleChampion
        self.descChampion = descChampion
        self.imgChampion = imgChampion
        self.backgroundChampion = backgroundChampion
        self.rolChampion = rolChampion
        
    }
    
    init(){}
    
}
