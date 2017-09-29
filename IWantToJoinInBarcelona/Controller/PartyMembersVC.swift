//
//  PartyMembersVC.swift
//  IWantToJoinInBarcelona
//
//  Created by Вячеслав Горлов on 27.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

class PartyMembersVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var players = [Int: Player]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let playersBase = Player.players {
            for player in playersBase {
                self.players[player.number] = player
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") {
            let player = Array(self.players.values).sorted{$0.number < $1.number}[indexPath.row]
            cell.imageView?.image = UIImage(named: String(player.number))
            cell.textLabel?.text = "\(player.number): \(player.name)"
            cell.detailTextLabel?.text = player.role
            return cell
        }
        return UITableViewCell()
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
