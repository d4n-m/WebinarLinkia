//
//  ViewControllerListChampions.swift
//  Test
//
//  Created by Daniel Moreno Arellano on 23/03/2020.
//  Copyright © 2020 Daniel Moreno Arellano. All rights reserved.
//

import UIKit

class ViewControllerListChampions: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var listaChampions:[Champion] = [
        Champion(nameChampion: "Aatrox", titleChampion: "La espada de los oscuros", descChampion: "Aatrox y sus hermanos, otrora respetados defensores de Shurima contra el Vacío, acabarían convirtiéndose en una amenaza aún mayor para Runaterra y solo conocieron la derrota ante el uso astuto de hechizos mortales.", imgChampion: UIImage(named: "aatrox")!, backgroundChampion: UIImage(named: "aatrox_back")!, rolChampion: UIImage(named: "role_fighter")!),
        Champion(nameChampion: "Darius", titleChampion: "La mano de noxus", descChampion: "No hay mayor símbolo del poder de Noxus que Darius, el guerrero más temido y más curtido en batallas de toda la nación. Pasando de orígenes humildes a convertirse en la Mano de Noxus.", imgChampion: UIImage(named:"darius")!, backgroundChampion:UIImage(named: "darius_back")!, rolChampion: UIImage(named: "role_fighter")!),
        Champion(nameChampion: "Ahri", titleChampion: "La mujer zorro de nueve colas", descChampion: "Ahri es una vastaya conectada de forma innata al poder latente de Runaterra, y es capaz de convertir la magia en orbes de energía pura.", imgChampion: UIImage(named: "ahri")!, backgroundChampion: UIImage(named: "ahri_back")!, rolChampion: UIImage(named: "role_mage")!),
        Champion(nameChampion: "Akali", titleChampion: "La asesina sigilosa", descChampion: "Tras abandonar la orden de los Kinkou y su título de Puño de la Sombra, Akali actúa ahora en solitario y está lista para convertirse en el arma mortal que necesita su gente.", imgChampion: UIImage(named: "akali")!, backgroundChampion: UIImage(named: "akali_back")!, rolChampion: UIImage(named: "role_assassin")!),
        Champion(nameChampion: "Lux", titleChampion: "La dama luminosa", descChampion: "Luxanna Crownguard procede de Demacia, un reino insular en el que las habilidades mágicas se observan con temor y suspicacia. ", imgChampion: UIImage(named: "lux")!, backgroundChampion: UIImage(named: "lux_back")!, rolChampion:UIImage(named: "role_mage")!),
        Champion(nameChampion: "Annie", titleChampion: "La hija de la oscuridad", descChampion: "Peligrosa pero encantadoramente precoz, Annie es una pequeña maga con un inmenso poder piromántico.", imgChampion: UIImage(named: "annie")!, backgroundChampion: UIImage(named: "annie_back")!, rolChampion: UIImage(named: "role_mage")!),
        Champion(nameChampion: "Akali", titleChampion: "La asesina sigilosa", descChampion: "Tras abandonar la orden de los Kinkou y su título de Puño de la Sombra, Akali actúa ahora en solitario y está lista para convertirse en el arma mortal que necesita su gente.", imgChampion: UIImage(named: "akali")!, backgroundChampion: UIImage(named: "akali_back")!, rolChampion: UIImage(named: "role_assassin")!),
        Champion(nameChampion: "Lux", titleChampion: "La dama luminosa", descChampion: "Luxanna Crownguard procede de Demacia, un reino insular en el que las habilidades mágicas se observan con temor y suspicacia. ", imgChampion: UIImage(named: "lux")!, backgroundChampion: UIImage(named: "lux_back")!, rolChampion:UIImage(named: "role_mage")!),
        Champion(nameChampion: "Annie", titleChampion: "La hija de la oscuridad", descChampion: "Peligrosa pero encantadoramente precoz, Annie es una pequeña maga con un inmenso poder piromántico.", imgChampion: UIImage(named: "annie")!, backgroundChampion: UIImage(named: "annie_back")!, rolChampion: UIImage(named: "role_mage")!)
    ]
    

    @IBOutlet weak var tableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaChampions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCellChampion
        
        myCell.nameChampion.text = listaChampions[indexPath.row].nameChampion
        myCell.imgChampion.image = listaChampions[indexPath.row].imgChampion
        myCell.rolChampion.image = listaChampions[indexPath.row].rolChampion
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "detailChampion") as! ViewControllerDetailChampion
        
        vc.champion = listaChampions[indexPath.row]
    
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.01356404088, green: 0.1465248764, blue: 0.1932604015, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // Do any additional setup after loading the view.
    
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        //Efecto left in
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
        cell.layer.transform = rotationTransform
        cell.alpha = 0.5
        
        UIView.animate(withDuration: 1.0) {
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
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
