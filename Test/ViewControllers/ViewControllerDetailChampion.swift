//
//  ViewControllerDetailChampion.swift
//  Test
//
//  Created by Daniel Moreno Arellano on 23/03/2020.
//  Copyright © 2020 Daniel Moreno Arellano. All rights reserved.
//

import UIKit

class ViewControllerDetailChampion: UIViewController {

    
    @IBOutlet weak var backChampion: UIImageView!
    
    @IBOutlet weak var titleChampion: UILabel!

    @IBOutlet weak var nameChampion: UILabel!
    
    @IBOutlet weak var descChampion: UILabel!
    
    var champion = Champion()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backChampion.image = champion.backgroundChampion
        titleChampion.text = champion.titleChampion
        nameChampion.text = champion.nameChampion
        descChampion.text = champion.descChampion
        
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.01356404088, green: 0.1465248764, blue: 0.1932604015, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
