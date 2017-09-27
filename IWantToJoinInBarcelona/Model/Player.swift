//
//  Player.swift
//  IWantToJoinInBarcelona
//
//  Created by Вячеслав Горлов on 27.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import Foundation

class Player {
    var number: Int
    var name: String
    var role: String
    
    init(number: Int, name: String, role: String) {
        self.number = number
        self.name = name
        self.role = role
    }
    
    static var players: [Player]? {
        var barcPlayers: [Player]?
        
        guard let path = Bundle.main.path(forResource: "BarcPlayers", ofType: "plist") else {
            print("Ошибка")
            return barcPlayers
        }
        
        let url = URL(fileURLWithPath: path)
        
        guard let dictionary = NSDictionary(contentsOf: url) else {
            print("Ошибка")
            return barcPlayers
        }
        
        guard let players = dictionary["Players"] as? NSDictionary else {
            print("Ошибка")
            return barcPlayers
        }
        
        barcPlayers = []
        for playerDescription in players {
            barcPlayers!.append(Player(
                number: Int(playerDescription.key as! String)!,
                name: (playerDescription.value as! NSDictionary)["Name"]! as! String,
                role: (playerDescription.value as! NSDictionary)["Role"]! as! String
            ))
        }
        return barcPlayers!.sorted {
            $0.number < $1.number
        }
        
    }
}

