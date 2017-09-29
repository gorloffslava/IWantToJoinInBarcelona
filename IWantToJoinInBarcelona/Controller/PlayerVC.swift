//
//  PlayerVC.swift
//  IWantToJoinInBarcelona
//
//  Created by Вячеслав Горлов on 27.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

class PlayerVC: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    
    weak var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "\(self.player.number)")
        self.nameLabel.text = self.player.name
        self.numberLabel.text = String(self.player.number)
        self.roleLabel.text = self.player.role

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
